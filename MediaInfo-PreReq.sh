#! /bin/bash

# Make sure directory /tmp is accessible
chmod 1777 /tmp

# Make sure current packages are updated
apt update

# Install MediaInfoCLI 
apt-get -y install mediainfo

# Import MKVToolNix GPG key 
curl -o /usr/share/keyrings/gpg-pub-moritzbunkus.gpg https://mkvtoolnix.download/gpg-pub-moritzbunkus.gpg

# Add MKVToolNix repositorie
cd /etc/apt/sources.list.d
touch mkvtoolnix.download.list
cat > mkvtoolnix.download.list <<EOF
deb [arch=amd64 signed-by=/usr/share/keyrings/gpg-pub-moritzbunkus.gpg] https://mkvtoolnix.download/ubuntu/ jammy main
deb-src [arch=amd64 signed-by=/usr/share/keyrings/gpg-pub-moritzbunkus.gpg] https://mkvtoolnix.download/ubuntu/ jammy main
EOF

# Make sure current packages are updated
apt update

# Install MKVToolNix Portable
apt -y install mkvtoolnix=70.0.0-0~ubuntu2204bunkus01 mkvtoolnix-gui=70.0.0-0~ubuntu2204bunkus01

# Download BifTool Executables
curl -Lo /tmp/biftool_linux.zip https://github.com/rokudev/samples/raw/master/utilities/bif%20tool/biftool_linux.zip

# Install unzip
apt-get -y install unzip

# Extract BifTool files to /bin/
unzip /tmp/biftool_linux.zip -d /bin