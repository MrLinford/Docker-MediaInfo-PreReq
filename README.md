# Docker MediaInfo PreReq

A script for installing prerequisites with in the EMBY Docker Container for the Media Info Plugin

---

**A few notes:**

You must be running the https://github.com/linuxserver/docker-emby container

You will have to rerun this sctip when a new docker image is used/updated/

---

Download `MediaInfo-PreReq.sh` and place in you **_appdata_** folder for **_emby_**

Open a terminal session with your Docker Host, in my case unRAID.

Run these commands

Connect to **_emby_** container: `docker exec -it emby bash`

Run script: `bash /config/MediaInfo-PreReq.sh`

Configure the Media Toolbox plugin, applications installed will be located in `/bin/`
