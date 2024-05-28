#!/data/data/com.termux/files/usr/bin/bash

apt update && apt full-upgrade -y
apt install wget tar apache2 php-apache -y

if [ "$(uname -m)" == "aarch64" ]
then
  wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz -O ~/ngrok.tgz
elif [ "$(uname -m)" == "armv7l" ] || [ "$architecture" == "armhf" ]
then
  wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm.tgz -O ~/ngrok.tgz
fi

tar xvzf ~/ngrok.tgz -d $PREFIX/bin
rm -rf ~/ngrok.tgz

ngrok
