# Pull base image.
FROM jlesage/baseimage-gui:ubuntu-22.04-v4

#RUN apt-get update && apt-get install -y mono-complete xterm wget unzip
RUN dpkg --add-architecture i386
RUN apt-get update && apt-get install -y wget unzip xterm wine32 winetricks

RUN mkdir -p /opt/SLCacheViewer \
    && wget -O /tmp/SLCacheViewer-1.1.4.zip http://slcacheviewer.com/dl/SLCacheViewer-1.1.4.zip \
    && unzip -j /tmp/SLCacheViewer-1.1.4.zip -d /opt/SLCacheViewer \
    && rm /tmp/SLCacheViewer-1.1.4.zip

RUN mkdir -p /opt/.wine && chown -R 1000:1000 /opt/.wine
ENV WINEPREFIX /opt/.wine
#RUN mkdir -p /root/.wine
#ENV WINEPREFIX /root/.wine
#RUN wineboot
#RUN chown -R 1000:1000 /root/.wine
#RUN winetricks -q vcrun2017 && winetricks -q dotnet40

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY startapp.sh /startapp.sh
RUN set-cont-env APP_NAME "SLCacheViewer"
