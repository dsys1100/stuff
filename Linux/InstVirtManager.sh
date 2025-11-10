#!/bin/sh

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install qemu-kvm qemu-utils libvirt-daemon-system libvirt-clients bridge-utils virt-manager ovmf cpu-checker -y
sudo systemctl enable --now libvirtd
sudo virsh net-start default && sudo virsh net-autostart default
sudo usermod -aG kvm,input,libvirt $USER
sudo mkdir -p /etc/libvirt/hooks
sudo wget https://raw.githubusercontent.com/PassthroughPOST/VFIO-Tools/master/libvirt_hooks/qemu -O /etc/libvirt/hooks/qemu
sudo chmod +x /etc/libvirt/hooks/qemu
sudo kvm-ok
echo " "
echo " "
echo "All done!"
