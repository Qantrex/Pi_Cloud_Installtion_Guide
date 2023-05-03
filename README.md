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

Once you have set up your NextCloud account, you can use it to store and share files, access your calendar and contacts, and more.

## Contributing

Please feel free to contribute to this project by submitting issues or pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
