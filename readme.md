# What does it do?
This script enables SSH server on port 22 on your mac, and sets up ngrok client on your Mac OS X computer to allow remote SSH access to your Mac OS X over ngrok.

The ngrok client will launch at startup.

Before using this script, you have to register an account and obtain a token from https://ngrok.com.

# Installation
1. Download `install.sh` to any directory, for example, `/PATH_TO_YOUR_SCRIPT`.
2. In line 7, replace string `<YOUR_TOKEN_HERE>` with your auth token obtained from ngrok.com
3. Open Terminal application on your Mac
4. Run the command line `sudo /PATH_TO_YOUR_SCRIPT/install.sh`

# Other usage
You can make change to the command line `/usr/local/bin/ngrok tcp 22` for other usage. For example, you can change it to `/usr/local/bin/ngrok http 80` to allow HTTP access over port 80.

# Usage
See Ngrok official document (https://ngrok.com/docs) for details on usage.

# Uninstallation
Simply download `uninstall.sh` and run `sudo bash /PATH_TO_YOUR_SCRIPT/uninstall.sh` script to disable SSH access and remove the ngrok client.
