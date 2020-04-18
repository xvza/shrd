#!/usr/bin/env bash
##################################################################################################################################################################
alt + ampersand
  rofi-sensible-terminal
alt + {eacute,quotedbl,apostrophe,parenleft,minus,egrave,underscore,ccedilla,agrave}
  mime.sh {inode/directory,text/plain,x-scheme-handler/http,x-scheme-handler/mailto,x-scheme-handler/note,text/x-opml,x-scheme-handler/magnet,audio/ogg,video/ogg}
super + eacute
  zeni.sh /var/http/srcs/util/mime.sh inode/directory

alt + u
  musc.sh ${SKEL}/Music
alt + d
  rofi.sh
alt + e
  systemctl reboot

alt + r
  xrdb.sh
alt + n
  polybar.sh
alt + c
  pkill -USR1 sxhkd
alt + k
  musc.sh
alt + v
  kill -15 -1

super + s
  kill.sh
super + Down
  size.sh 50 50
super + Up
  size.sh 100 92
super + Left
  move.sh 0
super + Right
  move.sh ${WIDTH}

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
