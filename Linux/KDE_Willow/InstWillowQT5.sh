#!/bin/sh
 
wget https://github.com/dsys1100/stuff/raw/refs/heads/main/Linux/KDE_Willow/WillowQT5.zip -O /tmp/WillowQT5.zip
unzip /tmp/WillowQT5.zip -d "$HOME/.local/share/"
rm /tmp/WillowQT5.zip
echo " "
echo " "
echo "All done!"