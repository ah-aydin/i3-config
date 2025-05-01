if xrandr | grep -q "HDMI-0 connected" && xrandr | grep -q "DP-0 connected" ; then
  xrandr \
    --output DP-0 --mode 2560x1440 --rate 144 --primary \
    --output HDMI-0 --mode 1920x1080 --rate 144 --right-of DP-0\
    --output eDP-1-1 --off
elif xrandr | grep -q "HDMI-0 connected" ; then
  xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 144 \
    --output eDP-1-1 --mode 2560x1440 --rate 144 --same-as HDMI-1-0
else
  xrandr --output eDP-1-1 --auto --output HDMI-1-0 --off
fi

xset s off
xset -dpms
