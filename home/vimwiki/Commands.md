## Hide Verbose to wpa_supplicant1 ##

	sudo nvim /usr/share/dbus-1/system-services/fi.w1.wpa_supplicant1.service

	append -s to silente

## Make a boot usb
	sudo dd if=archlinux-2021.10.01-x86_64.iso of=/dev/sdb1

## Autologin in tty:
	/etc/runit/sv/agetty-tty1/conf

## add services:
	ln -s /etc/runit/sv/lightdm /run/runit/service
