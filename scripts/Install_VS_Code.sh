#!/bin/bash

URL="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
APP_NAME="VS Code"

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

exit
