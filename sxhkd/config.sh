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
  rofi -show
alt + e
  systemctl reboot

alt + c
  pkill -USR1 -x sxhkd
alt + k
  pkill -USR1 -x ogg123
alt + v
  kill -15 -1

super + Left
  move.sh 0
super + Right
  move.sh 1

XF86Audio{Lower,Raise}Volume
  pactl set-sink-volume 0 {-,+}6%
XF86AudioMute
  pactl set-sink-mute 0 toggle
XF86MonBrightness{Up,Down}
  light -{A,U} 6
XF86ScreenSave{_,r}
  light -{N,S} 0
XF86Sleep
  systemctl suspend
XF86PowerOff
  systemctl poweroff
##################################################################################################################################################################
