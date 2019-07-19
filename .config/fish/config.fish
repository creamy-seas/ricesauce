bass source ~/.profile

#eval (python3 -m virtualfish)

#test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

abbr sc "sudo systemctl"
abbr pc "sudo pacman -S"
abbr xc "xcowsay"
abbr emacs "exec emacs"
abbr yt "youtube-dl -f 135+140 -o \"%(title)s.%(ext)s\""
abbr yt134 "youtube-dl -f 134+140 -o \"%(title)s.%(ext)s\""
abbr ytmusic "youtube-dl --embed-thumbnail -f "bestaudio" --extract-audio --audio-format "mp3" -o     \"%(title)s.%(ext)s\""

abbr wifigpu "ssh antonov@localhost -p 2410"
abbr gpuextreme "ssh antonov@134.219.128.96 -p 22"
abbr vlad_wifi "ssh vladimirantonov@86.20.96.166 -p 6769"
abbr vlad_wifitunnel "ssh antonov@86.20.96.166 -p 6767"
abbr macmini "ssh ilyaantonov@196.167.0.14 -p 22"
abbr srcp "source ~/creamy_seas/syncFiles/python_vi/mac_vi/bin/activate"
abbr netstat "sudo lsof -i | grep LISTEN"

abbr mw "move_window.sh"
abbr ss "stream_launch.sh"
abbr ssa "vstream_annotate.sh"
abbr mush "stream_concat.sh"
abbr gbib "getbib.sh"
abbr br "bind_ranger.sh"
abbr rm_bg "bg_remove.sh"
abbr cv_word "word_convert.sh"
abbr go "gource_record.sh"
abbr wp "wget --page-requisites --html-extension --convert-links --show-progress"
abbr ws "wget --recursive --page-requisites --html-extension --convert-links --show-progress --no-parent"

#function fish_user_key_bindings
	 # echo "Setting keybindings"
	 # bind \cD 'backward-kill-bigword' #backword kill word
	 # echo "set"
#end

	 # bind \e\[1\;5C forward-kill-word
	 # bind \e\[1\;5D backward-kill-word
	 # bind \e\< beginning-of-buffer
	 # bind \e\> end-of-buffer
	 #bind \eb backward-bigword
	 #bind \ef forward-bigword
	 # bind \e\x7f backward-kill-word
	 # bind \e\b backward-kill-word
	 # bind \eb backward-word
	 # bind \ef forward-word
