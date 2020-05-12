#!/usr/bin/env bash
###########################################################
set -u
###########################################################
source    "hexa.sh"  "share"
###########################################################
bspc config normal_border_color "${hexa[border]}"
bspc config focused_border_color "${hexa[primary]}"
bspc config border_width 3
###########################################################
