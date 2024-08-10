#!/bin/sh

# Thanks:
# https://nwgat.ninja/quick-easy-vmware-workstation-pro-on-ubuntu-24-04/

sudo apt update && sudo apt install build-essential tar -y
mkdir -p /tmp/vmw
cd /tmp/vmw/
wget https://softwareupdate.vmware.com/cds/vmw-desktop/ws/17.5.2/23775571/linux/core/VMware-Workstation-17.5.2-23775571.x86_64.bundle.tar
tar -xf  VMware-Workstation-17.5.2-23775571.x86_64.bundle.tar
chmod +x VMware-Workstation-17.5.2-23775571.x86_64.bundle
sudo ./VMware-Workstation-17.5.2-23775571.x86_64.bundle
wget https://github.com/mkubecek/vmware-host-modules/archive/workstation-17.5.1.tar.gz
tar -xzf workstation-17.5.1.tar.gz && cd vmware-host-modules-workstation-17.5.1
tar -cf vmmon.tar vmmon-only && tar -cf vmnet.tar vmnet-only
sudo cp -v vmmon.tar vmnet.tar /usr/lib/vmware/modules/source/
sudo vmware-modconfig --console --install-all
cd /tmp/
rm -rf vmw