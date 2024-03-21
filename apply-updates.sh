#!/bin/sh
pushd ~/nixos-config
sudo cp *.nix /etc/nixos/
#sudo cp -TR ./overlays /etc/nixos/overlays
nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
nix-channel --update
sudo nixos-rebuild switch
popd
