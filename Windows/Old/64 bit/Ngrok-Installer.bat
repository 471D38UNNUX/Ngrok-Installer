@echo off

setx /M PATH "%PATH%;C:\Program Files\WinRAR;C:\ngrok;"
git clone https://github.com/471D38UNNUX/Wincurl C:\Users\%username%\Downloads\Wincurl
C:\Users\%username%\Downloads\Wincurl\64\bin\curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -o C:\Users\%username%\Downloads\ngrok-stable-windows-amd64.zip
winrar x C:\Users\user\Downloads\ngrok-stable-windows-amd64.zip ngrok.exe C:\ngrok\
del C:\Users\%username%\Downloads\ngrok-stable-windows-amd64.zip
del C:\Users\%username%\Downloads\Wincurl

ngrok
