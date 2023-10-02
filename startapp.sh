#!/bin/sh
cd /opt/SLCacheViewer

wineboot -i
winetricks -q vcrun2017 && winetricks -q dotnet40 && winetricks -q corefonts
exec wine SLCacheViewer.exe
#exec /usr/bin/xterm
