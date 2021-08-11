[ -f ~/.config/.xprofile ] && . ~/.config/.xprofile
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --output eDP-1-1 --primary
xrandr --output HDMI-0 --auto --left-of eDP-1-1 --dpi 101
exec dwm
