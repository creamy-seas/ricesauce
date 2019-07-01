alias yt="youtube-dl -f 135+140 -o \"%(title)s.%(ext)s\""
alias ytmusic="youtube-dl --embed-thumbnail -f "bestaudio" --extract-audio --audio-format "mp3" -o     \"%(title)s.%(ext)s\""
alias srcp="source ~/creamy_seas/syncFiles/python_vi/arch_vi/bin/activate"

export EDITOR="emacs"
export PATH="$(du $HOME/.scripts | awk '{print $2}' | tr "\n" ":")$PATH"
export TERMINAL="st"
