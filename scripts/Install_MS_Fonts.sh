
#!/bin/bash

URL="http://ftp.us.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.8.1_all.deb"
APP_NAME="MS Fonts"

# Do all of this in the temp folder
cd /tmp

echo "Downloading the latest $APP_NAME"

# Download the .deb file
curl  $URL --output app.deb -L

echo "Installing $APP_NAME"

# install this file.
apt install -f ./app.deb

echo "$APP_NAME Install completed, cleaning up"

# All done, remove file.
rm ./app.deb

echo "Clean Up completed, exiting....."

# Reconfigure fontconfig
dpkg-reconfigure fontconfig

# Hold the package so it doesn't get updated
apt-mark hold ttf-mscorefonts-installer

exit
