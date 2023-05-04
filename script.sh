#!/bin/bash

# Script Config
Latest_NextCloud_Version="1.0.0"

# Configure network settings
cat <<EOT >> /etc/network/interfaces
auto eth0
iface eth0 inet dhcp
EOT

# Update and upgrade the system
apt update && apt upgrade -y

# Install necessary packages
apt install -y apache2 mariadb-server libapache2-mod-php7.4 \
php7.4-gd php7.4-json php7.4-mysql php7.4-curl \
php7.4-mbstring php7.4-intl php7.4-imagick \
php7.4-zip php7.4-xml librsvg2-bin wget gnupg

# Download Nextcloud
wget https://download.nextcloud.com/server/releases/nextcloud-<$Latest_NextCloud_Version>.zip

# Check package integrity
wget https://download.nextcloud.com/server/releases/nextcloud-<$Latest_NextCloud_Version>.zip.md5
md5sum -c nextcloud-<$Latest_NextCloud_Version>.zip.md5

# Verify authenticity via PGP
wget https://nextcloud.com/nextcloud.asc
gpg --import nextcloud.asc
gpg --verify nextcloud-<$Latest_NextCloud_Version>.zip.asc nextcloud-<$Latest_NextCloud_Version>.zip

# Extract Nextcloud to web server folder
unzip nextcloud-<$Latest_NextCloud_Version>.zip -d /var/www/html/

# Set ownership and permissions
chown -R www-data:www-data /var/www/html/nextcloud/
chmod -R 755 /var/www/html/nextcloud/

# Set up database
mysql -u root -e "CREATE DATABASE nextcloud;"
mysql -u root -e "GRANT ALL PRIVILEGES ON nextcloud.* TO 'nextclouduser'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -e "FLUSH PRIVILEGES;"

# Enable Apache modules
a2enmod rewrite headers env dir mime setenvif ssl

# Configure Apache virtual host
cat <<EOT > /etc/apache2/sites-available/nextcloud.conf
<VirtualHost *:80>
  ServerName nextcloud.example.com
  DocumentRoot /var/www/html/nextcloud/
  ErrorLog \${APACHE_LOG_DIR}/nextcloud_error.log
  CustomLog \${APACHE_LOG_DIR}/nextcloud_access.log combined
  <Directory /var/www/html/nextcloud/>
    Require all granted
    AllowOverride All
    Options FollowSymLinks MultiViews
  </Directory>
</VirtualHost>
EOT

# Enable virtual host and SSL
a2ensite nextcloud.conf
a2enmod ssl
systemctl restart apache2

# Follow Nextcloud Admin Manuals installation chapter
echo "Open http://nextcloud.example.com/ in your web browser and follow the Nextcloud installation wizard."
echo "Make sure to select MariaDB as the database and enter the following details:"
echo "- Database user: nextclouduser"
echo "- Database password: password"
echo "- Database name: nextcloud"
echo "After completing the installation, you can access your Nextcloud instance at http://nextcloud.example.com/"

# If already running Nextcloud, follow upgrade manual
echo "If you already have a Nextcloud instance running, refer to the upgrade manual to upgrade to the latest version."
echo "Upgrade manual: https://docs.nextcloud.com/server/latest/admin_manual/maintenance/upgrade.html"
