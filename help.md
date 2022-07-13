### Change keymap
$ setxbmap *keymap*

### Change brightness
$ brightnessctl -l **list devices**
$ brightnessctl --device=*devie* s *brightness*

### Synaptics 
\# cp ~/.config/synaptics/70-synaptics.conf /etc/X11/xorg.conf.d/
\# ln -s ~/.config/scripts/touchpad_toggle.sh /usr/local/bin/toupad_toggle
[mod] + t **toggle Touchpad**

### Multiple screens 
$ xrandr --output *outputDevice (HDMI1)* --mode 1920x1080
