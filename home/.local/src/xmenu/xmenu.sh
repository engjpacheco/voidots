#!/bin/sh

xmenu <<EOF | sh &
Applications
	Web Browser	firefox
	Image editor	gimp
	Videos de Lia
		Todos				lia
		La granja de Xenon		liagranja
		Gallina pintadita		liagallina
		Marionetas de Zenon		liamarionetas

Terminal (st)		st

Shutdown		poweroff
Reboot			Reboot
DWM			sysact
EOF
