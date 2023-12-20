# Zenmap Installer Script

![Zenmap Logo](image.png)

This script automates the installation of Nmap dependencies and Zenmap on Debian-based systems.


## Compatibility

The script has been tested and confirmed to work on:

- Debian-based distributions (Debian, Ubuntu, etc.)
- I tested on Arch and was working fine for me (needed to tweak some of the commands) :)
- For other Linux distributions:

If the script is not compatible with your distribution, you can manually install Nmap and Zenmap by following these steps:

1. Clone the Nmap repository:
    ```bash
    git clone https://github.com/nmap/nmap.git
    ```

2. Navigate to the cloned `nmap` directory:
    ```bash
    cd nmap
    ```

3. Navigate to the `zenmap` directory:
    ```bash
    cd zenmap
    ```

4. Run Zenmap with administrative privileges:
    ```bash
    sudo ./zenmap
    ```

This manual process involves cloning the Nmap repository, navigating to the `zenmap` directory within the cloned repository, and running `zenmap` with administrative privileges. Adjust the steps according to your distribution's requirements.

## Prerequisites

- This script is intended for Debian-based systems.
- Ensure you have administrative privileges (use `sudo`).
- Internet connectivity is required for package updates and installations.

## About Nmap and Zenmap

### Nmap (Network Mapper)

Nmap is a powerful open-source network scanning tool used for network discovery and security auditing. It allows users to discover hosts, services, and vulnerabilities on a network.

### Zenmap

Zenmap is a graphical user interface (GUI) for Nmap. It provides an easy-to-use interface for Nmap and simplifies the process of performing network scans by providing visual representations of network topology and scan results.

## Usage

1. Clone the repository or download the `zenmap-installer.sh` file.
2. Open a terminal and navigate to the directory containing the script.
3. Run the script with administrative privileges using:

    ```bash
    sudo ./zenmap-installer.sh
    ```

4. Follow on-screen prompts (if any) and monitor the terminal for any error messages or completion messages.
5. After the script finishes running, Zenmap should be installed and ready to use.

## Notes

- This script requires root privileges (`sudo`) to install packages and build Nmap.
- It automatically checks for root permissions and verifies the installation of necessary dependencies.
