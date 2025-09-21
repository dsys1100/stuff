#!/bin/sh

apk update
cat > /etc/apk/repositories << EOF; $(echo)
https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/main/
https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/community/
EOF
apk update
apk add plasma-desktop-meta kde-applications-base kde-applications-network plasma-nm sudo wget curl nano bash fastfetch
setup-devd udev
setup-xorg-base
apk add dbus dbus-x11 && rc-update add dbus
apk add elogind && rc-update add elogind
apk add xf86-input-libinput
rc-update add sddm
rc-update add networkmanager
adduser -D -s /bin/bash user sudo
echo "user ALL=(ALL) ALL" >> /etc/sudoers.d/user && chmod 0440 /etc/sudoers.d/user
passwd -l root
echo ' '
echo ' Use "passwd user" for change password of normal user and reboot!'
echo ' '
