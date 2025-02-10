#!/bin/sh
 
wget https://github.com/dsys1100/stuff/raw/refs/heads/main/Linux/KDE_Willow/LightlyQT6prebuilt.zip -O /tmp/LightlyQT6prebuilt.zip
sudo unzip /tmp/LightlyQT6prebuilt.zip -d "/usr/"
rm /tmp/LightlyQT6prebuilt.zip
echo " "
echo " "
echo "All done!"