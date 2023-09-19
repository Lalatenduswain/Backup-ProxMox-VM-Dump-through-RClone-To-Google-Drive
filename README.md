#Backup ProxMox VM Dump through RClone To Google Drive
Automated Data Synchronization and Verification with RClone for Google Drive

This script is designed to help you synchronize files from a source directory to a remote destination using [rclone](https://rclone.org/), a command-line program for managing files on cloud storage.

## Prerequisites

Before using this script, make sure you have the following prerequisites in place:

1. **rclone**: Ensure that rclone is installed and properly configured. You can download and configure rclone by following the instructions on the [rclone website](https://rclone.org/).

## Usage

1. Clone or download this repository to your local machine.

2. Modify the script according to your specific requirements. Open the `rclone.sh` file and edit the following variables:

   - `source_dir`: Specify the path to your source directory.
   - `remote`: Define your rclone remote configuration and destination folder. The folder is named with the current date (e.g., `2023_09_15`) to organize your backups.

3. Make the script executable:

   ```bash
   chmod +x rclone.sh
   ```

4. Run the script:

   ```bash
   ./rclone.sh
   ```

Feel free to modify the README as needed to provide additional context, usage instructions, or any other relevant information.

**Note:** Ensure that you have the necessary permissions and dependencies set up before running this script.

## Script Download and Installation

To install rclone on Linux/macOS/BSD systems, run:

```bash
sudo -v ; curl https://rclone.org/install.sh | sudo bash
```

For beta installation, run:

```bash
sudo -v ; curl https://rclone.org/install.sh | sudo bash -s beta
```

Note that this script checks the version of rclone installed first and won't re-download if not needed.

Feel free to modify the README as needed to provide additional context, usage instructions, or any other relevant information.

**Note:** Make sure to have the necessary permissions and dependencies set up before running this script.

## Donations

If you want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain)

## Disclaimer

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.
