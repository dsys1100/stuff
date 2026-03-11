#!/bin/sh

# Thanks: https://askubuntu.com/questions/1511854/how-to-permanently-disable-ubuntus-new-apparmor-user-namespace-creation-restric

sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
echo 'kernel.apparmor_restrict_unprivileged_userns = 0' | sudo tee /etc/sysctl.d/20-apparmor-donotrestrict.conf
echo " "
echo " "
echo "All done!"