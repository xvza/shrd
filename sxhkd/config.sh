#!/usr/bin/env bash
##################################################################################################################################################################
alt + ampersand
  tilix
#  rofi-sensible-terminal
alt + {eacute,quotedbl,apostrophe,parenleft,minus,egrave,underscore,ccedilla,agrave}
  mime.sh {inode/directory,text/plain,x-scheme-handler/http,x-scheme-handler/mailto,x-scheme-handler/note,text/x-opml,x-scheme-handler/magnet,audio/ogg,video/ogg}
super + eacute
  sudo.sh /var/http/srcs/util/mime.sh inode/directory

alt + u
  musc.sh Music
alt + k
  musc.sh 0
alt + o
  musc.sh 1

alt + Delete
  clea.sh
alt + d
  rofi -show
alt + e
  systemctl reboot

alt + c
  pkill -USR1 sxhkd
alt + v
  term.sh

super + s
  xdotool.sh close
super + Down
  xdotool.sh size 50% 50%
super + Up
  xdotool.sh size 100% 100%
super + Left
  xdotool.sh move 0 0
super + Right
  xdotool.sh move $((${WIDTH}/2)) 0

XF86Audio{Lower,Raise}Volume
  pactl set-sink-volume 0 {-,+}6%
XF86AudioMute
  pactl set-sink-mute 0 toggle
XF86MonBrightness{Up,Down}
  light -{A,U} 6
XF86ScreenSaver
  light -S 0
XF86Sleep
  systemctl suspend
XF86PowerOff
  systemctl poweroff
##################################################################################################################################################################
