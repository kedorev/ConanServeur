sudo useradd -m -s /bin/bash steam
sudo mkdir /home/steam/conan
sudo mkdir /home/steam/conan/server1
sudo -iu steam
mkdir bin
cd bin
ln -s /usr/games/steamcmd steamcmd

#paramétrage de steam
steamcmd +@sSteamCmdForcePlatformType windows
login anonymous
force_install_dir /home/steam/conan/server1
app_update 443030 validate
exit
exit

#installation de wine
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add 
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'

wget https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key
sudo apt-key add Release.key.1
sudo add-apt-repository 'deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/ ./'

sudo apt-get update

sudo apt-get install -f --install-recommends libfaudio0 wine-stable-i386 wine-stable-amd64 wine-stable winehq-stable -y

#install de screen
sudo apt-get install screen xvfb

#Paramétrage du serveur : Init
export WINEARCH=win64
export WINEPREFIX=/home/steam/.wine64

xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' wine /home/steam/.steam/steamapps/common/Conan\ Exiles\ Dedicated\ Server/ConanSandboxServer.exe -log

