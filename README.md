# nixos-config

Configuration scripts/etc for setting up nixos system under UTM (qemu).

This is based on the similar system by mitchellh here:

https://github.com/mitchellh/nixos-config

and by the "NixOS" YouTube series by Wil T:

https://www.youtube.com/playlist?list=PL-saUBvIJzOkjAw_vOac75v-x6EzNzZq-

## Mount the host user account onto the guest

`mkdir ~/host`

`sshfs dylan@192.168.1.249: ~/host -o idmap=user,follow_symlinks`

`fusermount -u ~/host`

Note that, to access most of your home directory via this mount, you need to enable "Allow full disk access for remote users" in the "Remote Login" preferences on the host Mac.
