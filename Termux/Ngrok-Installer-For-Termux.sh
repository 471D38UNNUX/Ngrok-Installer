#!/data/data/com.termux/files/usr/bin/bash

apt update && apt upgrade -y
apt install wget unzip -y
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip -O ~/ngrok.zip
unzip ngrok.zip -d $PREFIX/bin

ngrok
