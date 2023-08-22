#!/bin/bash

# cd /tmp

# Download, unzip and copy over the main theme files.
curl https://github.com/aktzx/cinnamon-themes/archive/main.zip --output theme.zip -L
unzip ./theme.zip -d ./theme
cd ./theme/cinnamon-themes-main
cp -r * $HOME/.themes
