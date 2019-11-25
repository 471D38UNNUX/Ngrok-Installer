#!/bin/sh

sudo zypper dup -y
sudo zypper install wget zip -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ~/ngrok.zip
sudo unzip ngrok.zip -d /usr/bin 
rm -rf ~/ngrok.zip

ngrok
