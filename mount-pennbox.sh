#!/bin/sh
mkdir -p ~/pennbox
rclone mount --vfs-cache-mode full --vfs-cache-max-size 1G pennbox: ~/pennbox
