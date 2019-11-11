#!/bin/sh

sudo apt update && sudo apt full-upgrade -y
sudo install wget unzip -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ~/ngrok.zip
unzip ngrok.zip -d /usr/bin 
rm -rf ~/ngrok.zip

ngrok
