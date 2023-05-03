# NextCloud Cloud Server on Raspberry Pi 4B (8GB RAM)

This repository contains instructions and scripts for setting up a NextCloud cloud server on a Raspberry Pi 4B.

## Materials Required

- Raspberry Pi 4B with 4GB or 8GB of RAM
- MicroSD card (16GB or larger)
- Power supply (5V, 3A)
- Ethernet cable or Wi-Fi adapter
- USB keyboard and mouse
- HDMI cable and monitor or TV

## Installation

1. Download Raspberry Pi OS from the official website (https://www.raspberrypi.org/software/operating-systems/).
2. Choose the "Raspberry Pi OS Lite" version, which does not include a graphical user interface (GUI).
3. Download and install the Raspberry Pi Imager tool from the same website.
4. Use the Raspberry Pi Imager to write the Raspberry Pi OS Lite image to the microSD card.
5. Connect the Raspberry Pi to the network and power it on.
6. Log in to the Raspberry Pi with the default username "pi" and password "raspberry".
7. Clone this repository with the following command:

git clone https://github.com/yourusername/raspberry-pi-nextcloud-server.git

8. Change directory to the cloned repository with the following command:

cd raspberry-pi-nextcloud-server

9. Run the installation script with the following command:

sudo ./install.sh

10. Follow the prompts to configure the web server and database server.

11. Once the installation is complete, navigate to `http://[Raspberry Pi IP address]/nextcloud` on a web browser on another device connected to the same network to set up your NextCloud account.

## Usage

1. Navigate to `http://[Raspberry Pi IP address]/nextcloud` on a web browser on another device connected to the same network to set up your NextCloud account. You will be prompted to create an admin account and set a password.

2. Once you have created your account, you can upload and download files by clicking on the "Files" app. You can also create new folders, share files with other users, and view your file activity history.

3. You can access your calendar and contacts by clicking on the "Calendar" and "Contacts" apps. You can create new events and contacts, and sync them across devices.

4. You can install additional apps from the "Apps" page to add more functionality, such as document editing, video conferencing, and more.

5. To upload files from your personal computer, simply click on the "Upload" button in the "Files" app and select the files you wish to upload. You can also drag and drop files into the web browser to upload them.

6. To download files to your personal computer, simply click on the file you wish to download in the "Files" app and select the "Download" option. The file will be downloaded to your computer.

7. You can also access your NextCloud account from other computers and devices by navigating to `http://[Raspberry Pi IP address]/nextcloud` on a web browser and logging in with your account credentials.

8. Enjoy using your personal cloud server with NextCloud on your Raspberry Pi 4B!

## Contribute

We welcome contributions to this project! Here's how you can contribute:

### Linux (Arch OS)

1. Fork the repository to your GitHub account by clicking the "Fork" button on the top right corner of this page.

2. Clone the forked repository to your local machine:

git clone https://github.com/[YOUR_USERNAME]/[REPO_NAME].git

3. Make your changes and commit them:

git add [FILENAMES]
git commit -m "Your commit message"

4. Push your changes to your forked repository:

git push origin master

5. Create a pull request by navigating to the original repository and clicking on the "New pull request" button. 

6. Wait for the project maintainers to review and merge your changes.

### Windows

1. Fork the repository to your GitHub account by clicking the "Fork" button on the top right corner of this page.

2. Clone the forked repository to your local machine using Git Bash or any other command-line interface:

git clone https://github.com/[YOUR_USERNAME]/[REPO_NAME].git#

3. Make your changes and commit them:

git add [FILENAMES]
git commit -m "Your commit message"

4. Push your changes to your forked repository:

git push origin master

5. Create a pull request by navigating to the original repository and clicking on the "New pull request" button.

6. Wait for the project maintainers to review and merge your changes.

Thank you for contributing to this project!

## License

This project is licensed under the MIT License - see the LICENSE file for details.
