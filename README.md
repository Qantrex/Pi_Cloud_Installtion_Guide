# ☁️ **NextCloud Server** on **Raspberry Pi** ☁️

This repository contains **instructions** for setting up a NextCloud cloud server on a Raspberry Pi 4B.

## Materials Required ⚒️ 

- Raspberry Pi with **more than 1GB** of RAM
- MicroSD card (8GB or larger)
- Power supply (5V, 3A)
- Ethernet cable or Wi-Fi adapter
- USB keyboard and mouse
- HDMI cable and monitor or TV

## Installation 🔽

1. Download the Raspberry NextCloud Image ([Download](https://github.com/nextcloud/nextcloudpi/releases/download/v1.52.0/NextCloudPi_RaspberryPi_v1.52.0.zip)). This version includes an installed NextCloud host so the setup is kept **minimal**. If you **dont** want to use the premade image you can follow this [Guide](https://docs.nextcloud.com/server/latest/admin_manual/installation).

2. Use the Raspberry Pi Imager ([Download](https://www.raspberrypi.com/software/)) to write the .img file to the microSD card. Insert the microSD card into your computer and follow the prompts in the Raspberry Pi Imager tool to complete the process. Select "Choose OS" and then "Custom".

3. If wanted you can use CTRL+STRG+X to open advanced settings and setup you network connection or ssh beforehand. (Only if you know what you are doing)

4. Insert the microSD card into the Raspberry Pi and connect it to your network using an Ethernet cable or like previously mentioned configure the network beforehand in the Imager. Power on the Raspberry Pi.

5. Find the IP address of your Raspberry Pi by running the following command in the Terminal app on another device connected to the same network:

    ```
    sudo apt install nmap
    nmap -sn [network address]/24
    ```
    Replace `[network address]` with the IP address of your network router. This command will show a list of devices on your network, including the Raspberry Pi with       its IP address.
    
    another option is to run the following command on the rasberry pi and seatch for eth0 if connected through LAN or wlan0 if connected wireless
    ```
    ifconfig
    ```

6. Log in to the Raspberry Pi with the default username "pi" and password "raspberry".

7. Update all packages to the latest version by running the following commands in the Terminal app:

    ```
    sudo apt update
    sudo apt upgrade
    ```

    This will update all the required packages and dependencies for Nextcloud.

8. Change directory to the Nextcloud repository with the following command:

    ```
    cd raspberry-pi-nextcloud-server
    ```

9. Run the installation script with the following command:

    ```
    sudo ./install.sh
    ```

    This will start the installation process and guide you through configuring the web server and database server.

10. Once the installation is complete, navigate to `http://[Raspberry Pi IP address]/nextcloud` on a web browser on another device connected to the same network to set up your Nextcloud account.

## Usage ✋

1. Navigate to `http://[Raspberry Pi IP address]/nextcloud` on a web browser on another device connected to the same network to set up your NextCloud account. You will be prompted to create an admin account and set a password.

2. Once you have created your account, you can upload and download files by clicking on the "Files" app. You can also create new folders, share files with other users, and view your file activity history.

3. You can access your calendar and contacts by clicking on the "Calendar" and "Contacts" apps. You can create new events and contacts, and sync them across devices.

4. You can install additional apps from the "Apps" page to add more functionality, such as document editing, video conferencing, and more.

5. To upload files from your personal computer, simply click on the "Upload" button in the "Files" app and select the files you wish to upload. You can also drag and drop files into the web browser to upload them.

6. To download files to your personal computer, simply click on the file you wish to download in the "Files" app and select the "Download" option. The file will be downloaded to your computer.

7. You can also access your NextCloud account from other computers and devices by navigating to `http://[Raspberry Pi IP address]/nextcloud` on a web browser and logging in with your account credentials.

8. Enjoy using your personal cloud server with NextCloud on your Raspberry Pi 4B!

## Contribute

I welcome you to contributions to this Guide! Here's how:

### Linux (Arch OS) 🐧

1. Fork the repository to your GitHub account by clicking the "Fork" button on the top right corner of this page.

2. Clone the forked repository to your local machine:

```
git clone https://github.com/[YOUR_USERNAME]/[REPO_NAME].git
```

3. Make your changes and commit them:

```
git add [FILENAMES]
git commit -m "Your commit message"
```

4. Push your changes to your forked repository:

```
git push origin master
```

5. Create a pull request by navigating to the original repository and clicking on the "New pull request" button. 

6. Wait for the project maintainers to review and merge your changes.

### Windows 🪟

1. Fork the repository to your GitHub account by clicking the "Fork" button on the top right corner of this page.

2. Clone the forked repository to your local machine using Git Bash or any other command-line interface:

```
git clone https://github.com/[YOUR_USERNAME]/[REPO_NAME].git#
```

3. Make your changes and commit them:

```
git add [FILENAMES]
git commit -m "Your commit message"
```

4. Push your changes to your forked repository:

```
git push origin master
```

5. Create a pull request by navigating to the original repository and clicking on the "New pull request" button.

6. Wait for the project maintainers to review and merge your changes.

Thank you for contributing to this project!

## License 📖

This project is licensed under the MIT License - see the LICENSE file for details.
