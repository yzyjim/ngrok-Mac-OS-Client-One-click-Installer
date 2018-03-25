#!/bin/sh
systemsetup -setremotelogin on
cd /usr/local/bin
curl -o ngrok-stable-darwin-amd64.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip
unzip ngrok-stable-darwin-amd64.zip
rm /usr/local/bin/ngrok-stable-darwin-amd64.zip
/usr/local/bin/ngrok authtoken <YOUR_TOKEN_HERE>
echo '#!/bin/sh
/usr/local/bin/ngrok tcp 22' >/usr/local/bin/ngrok.sh
chmod +x /usr/local/bin/ngrok.sh
chmod -R 777 /usr/local/bin/ngrok.sh
echo '<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.ngrok.onstartup</string>

    <key>Program</key>
        <string>/usr/local/bin/ngrok.sh</string>

    <key>KeepAlive</key>
        <true/>

</dict>
</plist>' > /Library/LaunchDaemons/com.ngrok.onstartup.plist
bash /usr/local/bin/ngrok.sh
/usr/local/bin/ngrok tcp 22