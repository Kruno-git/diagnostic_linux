#!/bin/bash
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si # You may get an error running it under sudo/root
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install influxdb --edge
sudo systemctl enable influxdb && systemctl start influxdb
sudo pacman -Sy grafana
systemctl start grafana && systemctl enable grafana
