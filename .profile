alias yt="youtube-dl -f 135+140 -o \"%(title)s.%(ext)s\""
alias ytmusic="youtube-dl --embed-thumbnail -f "bestaudio" --extract-audio --audio-format "mp3" -o     \"%(title)s.%(ext)s\""
alias srcp="source ~/creamy_seas/syncFiles/python_vi/arch_vi/bin/activate"

export EDITOR="emacs"
export BROWSER="firefox"
export PATH="$(du $HOME/.scripts | awk '{print $2}' | tr "\n" ":")$PATH"
export TERMINAL="st"

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
