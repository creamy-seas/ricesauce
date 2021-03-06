#!/bin/bash

#  ____   ____    ___   _____  ___  _      _____ 
# |  _ \ |  _ \  / _ \ |  ___||_ _|| |    | ____|
# | |_) || |_) || | | || |_    | | | |    |  _|  
# |  __/ |  _ < | |_| ||  _|   | | | |___ | |___ 
# |_|    |_| \_\ \___/ |_|    |___||_____||_____|
#

# 1 - variables to set on login
export EDITOR="emacsclient -t"	# opening emacs in terminal
export VISUAL="emacsclient -c -a emacs" # open emacs in gui
export BROWSER="firefox"
export READER="zathura"
export TERMINAL="st"
export PATH="/usr/local/cuda/bin:$(du $HOME/.local/bin | awk '{print $2}' | tr "\n" ":")$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib"

# 2 - less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
