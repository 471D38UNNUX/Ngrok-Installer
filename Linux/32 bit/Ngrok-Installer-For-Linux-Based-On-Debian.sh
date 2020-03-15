#!/bin/sh

sudo apt update && sudo apt full-upgrade -y
sudo apt install wget zip -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip -O ~/ngrok.zip
sudo unzip ~/ngrok.zip -d /usr/bin 
rm -rf ~/ngrok.zip

ngrok
