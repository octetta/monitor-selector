#!/usr/bin/env wish8.6
# set out [exec ./ddcctl -h]
# set out [exec ./ddcctl -d 1 -v 50]
# set out [exec ./ddcctl -d 1 -v 100]
# set out [exec ./ddcctl -d 1 -b 50]
# set out [exec ./ddcctl -d 1 -b 100]
# set out [exec ./ddcctl -d 1 -b 50]
# set out [exec ./ddcctl -d 2 -b 50]
# set out [exec ./ddcctl -d 2 -b 100]
# set out [exec ./ddcctl -d 2 -b 50]
# set out [exec ./ddcctl -d 2 -b 75]
# d 1 = 30in monitor
# d 2 = little monitor
# p 1 = on, 4 = off
proc brt {m s} {
    set out [exec ./ddcctl -d $m -b $s]
}
proc sel {m s} {
    set out [exec ./ddcctl -d $m -i $s]
}
proc pwr {m s} {
    set out [exec ./ddcctl -d $m -p $s]
}
package require Tk
button .b1 -text "30in brightness 50%" -command {brt 1 50}
button .b2 -text "30in brightness 70%" -command {brt 1 70}
button .b3 -text "27in brightness 50%" -command {brt 2 50}
button .b4 -text "27in brightness 70%" -command {brt 2 70}
button .b5 -text "30in use HDMI (desktop)" -command {sel 1 17}
button .b6 -text "30in use DP (laptop)" -command {sel 1 15}
button .b7 -text "27in use HDMI (laptop)" -command {sel 2 17}
button .b8 -text "27in use VGA (desktop)" -command {sel 2 1}
pack .b1 .b2 .b3 .b4 .b5 .b6 .b7 .b8
