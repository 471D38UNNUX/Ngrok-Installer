#!/bin/bash

# Function to check if a command exists
command_exists()
{
    command -v "$1" >/dev/null 2>&1
}

# Check for various package managers and print the corresponding distribution
if command_exists apt-get
then
    sudo apt update && sudo apt full-upgrade -y
    sudo apt install wget tar apache2 -y
elif command_exists dnf
then
    sudo dnf update -y
    sudo dnf install wget tar httpd -y
elif command_exists zypper
then
    sudo zypper dup -y
    sudo zypper install wget tar apache2 -y
elif command_exists pacman
then
    sudo pacman -Syyu --noconfirm
    sudo pacman -S wget tar apache --noconfirm
elif command_exists apk
then
    sudo apk update && sudo apk upgrade
    sudo apk add wget tar apache2
fi

# Provide more detailed information using if-else
if [ "$(uname -m)" == "x86_64" ]
then
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -O ~/ngrok.tgz
elif [ "$(uname -m)" == "i386" ] || [ "$(uname -m)" == "i686" ]
then
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-386.tgz -O ~/ngrok.tgz
fi

sudo tar xvzf ~/ngrok.tgz -C /usr/bin

rm -rf ~/ngrok.tgz

ngrok
    
