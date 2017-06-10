# OpenBox
#exec openbox-session

# TWM
#exec twm

# Window Maker
#exec wmaker

# EvilWM
#exec evilwm -snap 10 -bw 2 -fg red

# i3
#exec i3

# Xdefaults
#xrdb ~/.Xdefaults

# MPD
#mpd &

# Fonts
xset +fp ~/.fonts/vc
xset +fp ~/.fonts/artwiz-aleczapka-en-1.3
xset +fp ~/.fonts/bbfonts
xset +fp ~/.fonts/stlarch_font-1.5
xset +fp ~/.fonts/lokaltog-fonts/lokaltog-symbols
xset +fp ~/.fonts/lokaltog-fonts/lokaltog-fixed
xset fp rehash

# Compton 
compton &


# Wall
hsetroot -fill ~/Wall/mar.jpg
#hsetroot -fill ~/Wall/animecity.jpg
#hsetroot -fill ~/Wall/encounter.jpg
#hsetroot -tile ~/Wall/metalbridge06.jpg
#feh --bg-scale ~/Wall/eyes.jpg
#nitrogen --restore &

# Conky
#conky &

# Urxvt
urxvtd -q -f -o
#urxvt &

# SWM + GM Workspace
#exec swm
#gm &

# Bspwm + Sxhkd
sxhkd &
exec bspwm

# Fvwm
#exec fvwm
