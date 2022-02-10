# dwmblocks

Modular status bar for dwm written in c.

# Modifying blocks

The statusbar is made from text output from commandline programs.  Blocks are
added and removed by editing the config.h file.


# Signaling changes

Most statusbars constantly rerun every script every several seconds to update.
This is an option here, but a superior choice is giving your module a signal
that you can signal to it to update on a relevant event, rather than having it
rerun idly.


