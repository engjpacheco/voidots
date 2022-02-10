## When your boot partition was deleted this is what I make:

[  ] format the partition
mkfs.fat -F32 /dev/sdaX

[  ] mount the partitions:
mount /dev/sdaX /mnt (the root partition)
mount /dev/sdaX /mnt/boot (boot partition)

[  ] chroot into /mnt
arch-chroot /mnt

[  ] Install the linux kernel
pacman -S linux

[  ] change the init boot
mkinitcipio -p linux

[  ] Make the grub config:
grub-install –-target=x86_64-efi –-efi-directory=/boot –-bootloader-id=GRUB

[  ] Update grub:
grub-mkconfig -o /boot/grub/grub.cfg
or
update-grub

[  ] Delet boot from fstab and generate again the fstab:
fstabgen -U /mnt >> /mnt/etc/fstab

## Thats it, you got the boot partition working again
