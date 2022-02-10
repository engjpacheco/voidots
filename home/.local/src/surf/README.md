surf - simple webkit-based browser
==================================
surf is a simple Web browser based on WebKit/GTK+.

Requirements
------------
In order to build surf you need GTK+ and Webkit/GTK+ header files.

In order to use the functionality of the url-bar, also install dmenu[0].

Installation
------------
Edit config.mk to match your local setup (surf is installed into
the /usr/local namespace by default).

Before you go to compile and install surf, you need to patch it.
To do so, only execute this command for each patch.
`patch -p1 < surf-patch.diff`

Change `surf-patch.diff` for the real patch.

**Take special attention when patching because some patches could, and probably will give you errors. In that case, you need to figure out what's going on and patch it manually.**

Afterwards enter the following command to build and install surf (if
necessary as root):

    make clean install

Running surf
------------
run
	surf [URI]

See the manpage for further options.

Running surf in tabbed
----------------------
For running surf in tabbed[1] there is a script included in the distribution,
which is run like this:

	surf-open.sh [URI]

Further invocations of the script will run surf with the specified URI in this
instance of tabbed.

[0] http://tools.suckless.org/dmenu
[1] http://tools.suckless.org/tabbed

**Additional notes for this surf configuration:**

1 - Surf will save all its config files into `~/.config/surf` instead of `~/.surf`

2 - If you press `CTRL + S`, you can search any keyword through the search engine, which is `DuckDuckGo`. But you can change it :P.

3 - Surf will use the clipboard instead of primary for copying. At least in theory, because for me it still continue using primary...

4 - If you press `CTRL + Shift + M`, `dmenu` will appear showing you the bookmarks you have stored using `CTRL + M`.

5 - If you press `CTRL + Shift + H`, `dmenu` will appear showing you the history `surf` has stored when you go to a url in `'Go mode'`.

6 - If you press `CTRL + D`, `st` will appear showing you the downloads you have made.

7 - As its patch says, if you're in a web page trying to play a video, press `CTRL + w` to stream it with `mpv`.

8 - The homepage is `DuckDuckGo`, but again, you can change it.
