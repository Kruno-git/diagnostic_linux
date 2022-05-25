#!/bin/bash
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install influxdb --edge
sudo systemctl enable influxdb && systemctl start influxdb
sudo pacman -Sy grafana 
