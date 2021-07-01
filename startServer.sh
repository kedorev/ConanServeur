#!/bin/sh
export WINEARCH=win64
export WINEPREFIX=/home/steam/.wine64

screen -S Conan1
xvfb-run --auto-servernum --server-args='-screen 0 640x480x24:32' wine /home/steam/.steam/steamapps/common/Conan\ Exiles\ Dedicated\ Server/ConanSandboxServer.exe -log
