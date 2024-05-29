if xrandr | grep -q "HDMI-1-0 connected"; then
  xrandr --output eDP-1 --off --output HDMI-1-0 --primary --mode 1920x1080 --rate 144
else
  xrandr --output eDP-1 --auto --output HDMI-1-0 --off
fi
