#!/bin/sh

sudo sudo pacman -Syu
sudo pacman -S wget zip
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ~/ngrok.zip
sudo unzip ~/ngrok.zip -d /usr/bin 
rm -rf ~/ngrok.zip

ngrok
