#!/bin/sh

apk update && apk upgrade --no-interactive
apk add --no-interactive sudo wget curl nano bash docker docker-cli-compose shadow fastfetch
mkdir -p /sys/fs/cgroup
if ! grep -q "cgroup2" /etc/fstab; then
    echo "none /sys/fs/cgroup cgroup2 defaults 0 0" >> /etc/fstab
fi
mount -t cgroup2 none /sys/fs/cgroup || true
rc-update add localmount boot
rc-service localmount start
rc-update add docker default
adduser -D -s /bin/bash user sudo
echo "user ALL=(ALL) ALL" >> /etc/sudoers.d/user && chmod 0440 /etc/sudoers.d/user
passwd -l root
echo ' '
echo ' Use "passwd user" to change password of normal user and reboot!'
echo ' '
