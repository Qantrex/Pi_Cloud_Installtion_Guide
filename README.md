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



## Step 1: Get the NextCloudPi image

1. Download the Raspberry NextCloud Image ([Download](https://github.com/nextcloud/nextcloudpi/releases/download/v1.52.0/NextCloudPi_RaspberryPi_v1.52.0.zip)). This version includes an installed NextCloud host so the setup is kept **minimal**.

3. If you **dont** want to use the premade image you can use the [custom script](script.sh) I made (Note: I do not update the script and you have to have basic bash knowledge to be able to use it. For further [Help](https://docs.nextcloud.com/server/latest/admin_manual/installation).

## Step 2: Flash NextCloudPi image to MicroSD card

1. Use the Raspberry Pi Imager ([Download](https://www.raspberrypi.com/software/)) to write the .img file to the microSD card. Insert the microSD card into your computer and follow the prompts in the Raspberry Pi Imager tool to complete the process. Select "Choose OS" and then "Custom".

3. If wanted you can use CTRL+STRG+X to open advanced settings and setup you network connection or ssh beforehand. (Only if you know what you are doing)

4. CLick Write and wait for the flashing process to complete.

## Step 3: Boot up Raspberry Pi with NextCloudPi

1. Insert the MicroSD card into your Raspberry Pi.

3. Connect your Raspberry Pi to your network via Ethernet cable.

5. Power on your Raspberry Pi.

5. Wait a few minutes for the boot process to complete.

6. Open a web browser on your computer and navigate to http://nextcloudpi.local or http://<your_Raspberry_Pi_IP_address>

## Step 4: Initial Nextcloud setup

1. Choose a username and password for your Nextcloud admin account.

3. Select the data directory. This is where all your files will be stored. The default directory is /var/www/nextcloud/data, but you can choose a different directory if you prefer.

5. Set up your database. Nextcloud supports several database options. The easiest option for most users is SQLite, which is the default. If you're expecting heavy usage, you may want to consider using a different database.

7. Wait for the setup process to complete.

## Step 5: Accessing Nextcloud



## Usage ✋

1. Once the setup process is complete, you can access your Nextcloud instance by navigating to http://nextcloudpi.local or http://<your_Raspberry_Pi_IP_address> in your web browser.

3. Log in with the username and password you created during setup.

4. Once you have created your account, you can upload and download files by clicking on the "Files" app. You can also create new folders, share files with other users, and view your file activity history.

5. You can access your calendar and contacts by clicking on the "Calendar" and "Contacts" apps. You can create new events and contacts, and sync them across devices.

6. You can install additional apps from the "Apps" page to add more functionality, such as document editing, video conferencing, and more.

7. To upload files from your personal computer, simply click on the "Upload" button in the "Files" app and select the files you wish to upload. You can also drag and drop files into the web browser to upload them.

8. To download files to your personal computer, simply click on the file you wish to download in the "Files" app and select the "Download" option. The file will be downloaded to your computer.

9. You can also access your NextCloud account from other computers and devices by navigating to `http://[Raspberry Pi IP address]/nextcloud` on a web browser and logging in with your account credentials.

## Contribute _([Offical Docs](https://docs.github.com/en/get-started/quickstart/contributing-to-projects))_

I welcome you to contributions to this Guide! Here's how:

### Linux (Arch OS) 🐧

1. Fork the repository to your GitHub account by clicking the "Fork" button on the top right corner of this page.

2. Clone the forked repository to your local machine:

```
sudo pacman -Syu
sudo pacman -Syu git
git clone https://github.com/Qantrex/Pi_Cloud_Installtion_Guide.git
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
git clone https://github.com/Qantrex/Pi_Cloud_Installtion_Guide.git
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
