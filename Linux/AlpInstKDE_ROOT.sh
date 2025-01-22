#!/bin/sh

apk update
cat > /etc/apk/repositories << EOF; $(echo)
https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/main/
https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/community/
EOF
apk update
apk add plasma-desktop-meta kde-applications-base kde-applications-network plasma-nm
setup-devd udev
setup-xorg-base
apk add dbus dbus-x11 && rc-update add dbus
apk add elogind && rc-update add elogind
apk add xf86-input-libinput
rc-update add sddm
rc-update add networkmanager
apk add sudo
adduser -D user sudo
echo 'sudo ALL=(ALL) ALL' > /etc/sudoers.d/sudo && chmod 0440 /etc/sudoers.d/sudo
echo ' '
echo ' use "passwd user" for change password of normal user and reboot!'
echo ' '