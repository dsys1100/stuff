## Other stuff
[FF oneliner css](https://github.com/dsys1100/waterfall_mod) ; [FF verticalTabs css](https://github.com/dsys1100/firefoxcss_StockMod) ; [KDE Willow and Lightly](https://github.com/dsys1100/stuff/tree/main/Linux/KDE_Willow) ; [Lorem ipsum](https://github.com/dsys1100)

## Scripts for Linux
Most scripts are run as a normal user with sudo. The "*" indicates scripts run as root user or "wget ... | **sudo sh**".
( ```apt update && apt install sudo && usermod -aG sudo UsErNaMe``` )

### All distros

myip Binary
```
wget goo.su/izur9 -O - | sh
```

### Debian based
Most scripts tested in Ubuntu 24.04 and Debian 11/12

(For VM) VMWare Graphics fix
```
wget goo.su/wg864 -O - | sh
```

(For VM) VMWare Shared folder in /media/host-shared
```
wget goo.su/7uAEQ -O - | sh
```

MicroDesnap / Remove all snaps and snapd / SystemD
```
wget goo.su/9bn2y -O - | sh
```

Add Mozilla PPA and install Firefox
```
wget goo.su/vBoqMw -O - | sh
```

Desnap / Remove all snaps&snapd and replace Firefox to normal version
```
wget goo.su/yzPOBRA -O - | sh
```

DesnapESR / Remove all snaps&snapd and replace Firefox to normal version (ESR)
```
wget goo.su/f04ZX -O - | sh
```

Install minimal KDE + gdebi,neofetch *
```
wget goo.su/Dd7X -O - | sh
```

Install minimal Gnome + gdebi,neofetch,gnome-tweaks,menulibre *
```
wget goo.su/sKR1 -O - | sh
```

Enable 75% zRAM
```
wget goo.su/U6voMr -O - | sh
```

Install Thorium Browser (SSE3 ver)
```
wget goo.su/Gv0sv -O - | sh
```

Install Podman+Distrobox+Boxbuddy (GUI)
```
wget goo.su/PTnT0c -O - | sh
```

Install VMWare Workstation
```
wget goo.su/LkOR -O - | sh
```

Install QEMU, KVM, VirtManager
```
wget goo.su/7iZUn -O - | sh
```

Install Docker+Portainer
```
wget goo.su/ir59n4 -O - | sh
```

Install Wine in Ubuntu
```
wget goo.su/DvgNCbg -O - | sh
```

Sudo Dolphin shortcut
```
wget goo.su/eTWkO -O - | sh
```

Update Debian 11,12 to Debian 13 *
```
wget goo.su/9Ds4R -O - | sh
```

Install Openbox, xfce4terminal, thunar, without login manager
```
wget goo.su/dcZiyK -O - | sh
```
and configs for that:
```
wget goo.su/WsQocO -O - | sh
```

Fix Unmanaged Network
```
wget goo.su/ZmNzqV -O - | sh
```

Install full Gnome 41 in Ubuntu **20.04** + gdebi,neofetch,gnome-tweaks,menulibre *
```
wget goo.su/j8Te -O - | sh
```

### Alpine

Install minimal KDE in Alpine *, no Xserver on 3.22+
```
wget goo.su/NO7eB -O - | sh
```

Install Docker in Alpine *
```
wget goo.su/228Kn -O - | sh
```

### Arch

Install Chaotic AUR and yay
```
wget goo.su/uVaa6T -O - | sh
```
and configs for yay:
```
wget goo.su/AV8Qw -O - | sh
```

### Device-specific stuff

Color profile for Lenovo B570e and his crap display (LP156WH4-TLN1). Created in DisplayCAL **without colorimeter**
```
sudo wget goo.su/L42ca -O /usr/share/c.icc
```
