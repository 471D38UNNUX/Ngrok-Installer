![](ngrok+(1).png)

# Ngrok Installer

Before use this tool, first you should login to ngrok account in this link: https://dashboard.ngrok.com/login 

After that, run this script:

For termux:

$apt install git

$git clone https://github.com/471D38UNNUX/Ngrok-Installer

$cd Ngrok-Installer

$cd Termux

$bash Ngrok-Installer.sh

To usage:

$ngrok authtoken (your authtoken on your ngrok dashboard)

For help:

$ngrok help

For start a HTTP tunnel on port 8080:

$apachectl start

$ngrok http 8080

For update:

$ngrok update

If you have reconnecting problem, turn on your mobile hotspot or use vpn

If you want configuring Apache, Apache main configuration is located in $PREFIX/etc/apache2

If you want modify an index.html, this file is stored in $PREFIX/share/apache2/default-site/htdocs

For linux:

#apt install git -y (for Linux based on Debian)

#yum install git -y (for Linux based on Red Hat)

#zypper install git (for Linux based on SUSE)

#pacman -S git (for Linux based on Arch)

#apk add git (for Alpine)

#git clone https://github.com/471D38UNNUX/Ngrok-Installer

#cd Ngrok-Installer

#cd Linux

bash Ngrok-Installer.sh

To usage:

#ngrok authtoken (your authtoken on your ngrok dashboard)

For help:

#ngrok help

For start a HTTP tunnel on port 80:

#sudo service apache2 start

#ngrok http 80

For update

#ngrok update

If you want configuring Apache, Apache main configuration is located in /etc/apache2

If you want modify an index.html, this file is stored in /var/www/html

For Windows:

Download and install Git Bash in this link https://git-scm.com/

Download and install WinRAR in this link https://www.win-rar.com/download.html

Download and install Apache in this link https://www.apachelounge.com/download/

git clone https://github.com/471D38UNNUX/Ngrok-Installer

cd Ngrok-Installer

cd Windows

Ngrok-Installer

How to usage:

ngrok authtoken (your authtoken on your ngrok dashboard)

For help:

ngrok help

For start a HTTP tunnel on port 80:

Extract httpd which file you downloaded before with WinRAR

Add httpd extracted directory\httpd-(version)\Apache(version)\bin and C:\ngrok into path environment variable

Open Command Prompt

httpd

ngrok http 80

For update:

ngrok update

If you want configuring Apache, Apache main configuration is located in httpd extracted directory\httpd-(version)\Apache(version)\conf

If you want modify an index.html, this file is stored in httpd extracted directory\httpd-(version)\Apache(version)\htdocs

Enjoy
