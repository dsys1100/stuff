#!/bin/bash

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install build-essential -y
#mkdir -p /tmp/vmw && cd /tmp/vmw/
wget https://archive.org/download/vmware-workstation-25h2_202510/VMware-Workstation-Full-25H2-24995812.x86_64.bundle -O /tmp/vmw.bundle
#tar -xf VMware-Workstation-17.6.3-24583834.x86_64.bundle.tar
chmod +x /tmp/vmw.bundle
sudo /tmp/vmw.bundle
sudo vmware-modconfig --console --install-all
#cd /tmp/
rm /tmp/vmw.bundle
sudo /usr/lib/vmware/bin/vmware-setup-helper -e -o -u yes -c no
echo " "
echo " "
echo "All done!"
