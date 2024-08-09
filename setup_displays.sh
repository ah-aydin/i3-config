if xrandr | grep -q "HDMI-1-0 connected" && xrandr | grep -q "DP-1-1 connected" ; then
  xrandr \
    --output HDMI-1-0 --mode 1920x1080 --rate 144 --primary \
    --output eDP-1 --mode 1920x1080 --rate 144 --same-as HDMI-1-0 \
    --output DP-1-1 --mode 1920x1080 --rate 75 --right-of HDMI-1-0
elif xrandr | grep -q "HDMI-1-0 connected" ; then
  xrandr --output HDMI-1-0 --primary --mode 1920x1080 --rate 144 \
    --output eDP-1 --mode 1920x1080 --rate 144 --same-as HDMI-1-0
else
  xrandr --output eDP-1 --auto --output HDMI-1-0 --off
fi

