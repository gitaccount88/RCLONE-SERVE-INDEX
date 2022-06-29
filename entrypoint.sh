#!/bin/bash
#author https://github.com/developeranaz (don't delete this)
rclone version
mkdir /.config
mkdir /.config/rclone/
wget "$CONFIG_IN_URL" -O /.rclone.conf
RCLONE_CONFIG_PASS=$PASSWD rclone listremotes
RCLONE_CONFIG_PASS=$PASSWD rclone serve http $CLOUDNAME: --addr=0.0.0.0:$PORT
#rclone serve http $CLOUDNAME: --addr :$PORT --vfs-read-chunk-size 128M
