#! /bin/bash

apt update

apt-get -y install mediainfo

curl -o /usr/share/keyrings/gpg-pub-moritzbunkus.gpg https://mkvtoolnix.download/gpg-pub-moritzbunkus.gpg

cd /etc/apt/sources.list.d

touch mkvtoolnix.download.list

cat > mkvtoolnix.download.list << EOF
deb [signed-by=/usr/share/keyrings/gpg-pub-moritzbunkus.gpg] https://mkvtoolnix.download/ubuntu/ jammy main
deb-src [signed-by=/usr/share/keyrings/gpg-pub-moritzbunkus.gpg] https://mkvtoolnix.download/ubuntu/ jammy main
EOF

apt update

apt -y install mkvtoolnix=70.0.0-0~ubuntu2204bunkus01 mkvtoolnix-gui=70.0.0-0~ubuntu2204bunkus01

curl -Lo /tmp/biftool_linux.zip https://github.com/rokudev/samples/raw/master/utilities/bif%20tool/biftool_linux.zip

apt-get -y install unzip

unzip /tmp/biftool_linux.zip -d /bin