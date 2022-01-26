#!/bin/sh
mkdir -p ~/host
sshfs dylan@192.168.64.1: ~/host -o idmap=user,follow_symlinks
