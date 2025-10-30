#!/bin/sh

# Thanks: https://github.com/SharafatKarim/chaotic-AUR-installer

sudo pacman -Syu --needed --noconfirm
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U --noconfirm \
  "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst" \
  "https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst"
{
  echo ""
  echo "# Chaotic-AUR"
  echo "[chaotic-aur]"
  echo "Include = /etc/pacman.d/chaotic-mirrorlist"
} | sudo tee -a /etc/pacman.conf > /dev/null
sudo pacman -Syu --needed --noconfirm git base-devel curl wget nano fastfetch yay
echo " "
echo " "
echo "All done! Chaotic AUR and yay installed."
