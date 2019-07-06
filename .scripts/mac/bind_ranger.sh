#!/bin/bash
# .bak because mac is retarded
# need new line to be posix compliant

rcFile="/Users/CCCP/.config/ranger/rc.conf" # ranger config file
regexp="^map $1 cd .*\$" # regular expression of the form "map gaf cd /Users/ext/dfsda"
replace="map $1 cd $(pwd)"

# 1 - search for regexp
search=$(cat "$rcFile" | grep "$regexp")

if [ -z "$search" ]; then
    # 2 - if search is empty, add a new line after gnuclownworld
    sed -i.bak '/gnuclownworld/a\
    	map '$1' cd '$(pwd)'\
	' "$rcFile"
    
    echo "Wrote:\
    	 map $1 cd $(pwd)"
else
    # 3 - if keys are already bound, ask before replacing
    echo "Entry already exist:"
    echo "   $search"
    echo "Replace? [y/N]"
    read confirm
    
    if [ "$confirm" = "y" ];then
	# replace if confimred
	sed -i.bak "s|$regexp|$replace|" "$rcFile"

	echo "Rewrote:\
    		 map $1 cd $(pwd)"
    fi
fi

