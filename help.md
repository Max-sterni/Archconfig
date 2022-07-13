### Change keymap
$ setxbmap *keymap*

### Change brightness
$ brightnessctl -l **list devices**
$ brightnessctl --device=*devie* s *brightness*

### Synaptics TODO
\# cp ~/.config/synaptics/70-synaptics.conf /etc/X11/xorg.conf.d/

### Multiple screens 
$ xrandr --output <outputDevice (HDMI1)> --mode 1920x1080
