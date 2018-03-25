#!/bin/sh
systemsetup -setremotelogin off
rm /usr/local/bin/ngrok
rm /usr/local/bin/ngrok.sh
rm /Library/LaunchDaemons/com.ngrok.onstartup.plist
