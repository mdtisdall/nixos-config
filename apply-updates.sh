#!/bin/sh
pushd ~/nixos-config
sudo cp *.nix /etc/nixos/
sudo cp -TR ./overlays /etc/nixos/overlays
sudo nixos-rebuild switch
popd
