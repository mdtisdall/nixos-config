# nixos-config

Configuration scripts/etc for setting up nixos system under UTM (qemu).

This is based on the similar system by mitchellh here:

[https://github.com/mitchellh/nixos-config](https://github.com/mitchellh/nixos-config)

and by the "NixOS" YouTube series by Wil T:

[https://www.youtube.com/playlist?list=PL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-](https://www.youtube.com/playlist?list=PL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-)

## Mount the host user account onto the guest

`./mount-host.sh` will mount the host at `~/host`.
`./ummount-host.sh` will unmount the host from `~/host`.

Note that, to access most of your home directory via this mount, you need to enable "Allow full disk access for remote users" in the "Remote Login" preferences on the host Mac.


## Mount a box.com account 

`rclone config` will configure a box.com account. I think this only needs to be done once, but can't see how to make it part of the nixos configuration.

`rclone mount :box ~/box.com` will mount the box.com account at `~/box.com`.
`fusermount -u ~/box.com` will unmount the box.com account at `~/box.com`.

