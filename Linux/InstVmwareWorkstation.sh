#!/bin/bash

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install build-essential tar -y
mkdir -p /tmp/vmw && cd /tmp/vmw/
wget https://web.archive.org/web/20250304135137/https://softwareupdate.vmware.com/cds/vmw-desktop/ws/17.6.3/24583834/linux/core/VMware-Workstation-17.6.3-24583834.x86_64.bundle.tar
tar -xf VMware-Workstation-17.6.3-24583834.x86_64.bundle.tar
chmod +x VMware-Workstation-17.6.3-24583834.x86_64.bundle
sudo ./VMware-Workstation-17.6.3-24583834.x86_64.bundle
sudo vmware-modconfig --console --install-all
cd /tmp/
rm -rf vmw
sudo /usr/lib/vmware/bin/vmware-setup-helper -e -o -u yes -c no
echo " "
echo " "
echo "All done!"