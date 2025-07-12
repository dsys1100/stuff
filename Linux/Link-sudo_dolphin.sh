#!/bin/sh

mkdir -p ~/.local/share/applications/
wget -O ~/.local/share/applications/org.kde.dolphin.root.desktop goo.su/bCVUXT
kbuildsycoca5 && kbuildsycoca6
echo " "
echo " "
echo "All done!"
