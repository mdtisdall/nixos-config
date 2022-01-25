#!/bin/sh
pushd ~/nixos-config
sudo cp *.nix /etc/nixos/
sudo nixos-rebuild switch
popd
