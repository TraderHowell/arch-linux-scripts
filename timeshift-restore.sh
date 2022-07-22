#!/bin/bash

#################################################################################
# Restoration from a timeshift btrfs backup using a live Arch installation image.
#################################################################################

# Mount the filesystem.
mount /dev/nvme0n1p2 /mnt -o subvol=@

# Chroot into the system.
arch-chroot /mnt

# Use timeshift to choose and restore a backup.
timeshift --restore
