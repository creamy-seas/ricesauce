#!/bin/sh

#  _____  _   _  ___  _   _  _  __ ____    _     ____  
# |_   _|| | | ||_ _|| \ | || |/ /|  _ \  / \   |  _ \ 
#   | |  | |_| | | | |  \| || ' / | |_) |/ _ \  | | | |
#   | |  |  _  | | | | |\  || . \ |  __// ___ \ | |_| |
#   |_|  |_| |_||___||_| \_||_|\_\|_|  /_/   \_\|____/ 
#                                                      
#  ____    ___   ____  _____   ____   _  _    _   ___  
# |  _ \  / _ \ |  _ \|_   _| |___ \ | || |  / | / _ \ 
# | |_) || | | || |_) | | |     __) || || |_ | || | | |
# |  __/ | |_| ||  _ <  | |    / __/ |__   _|| || |_| |
# |_|     \___/ |_| \_\ |_|   |_____|   |_|  |_| \___/ 
#                                                      
# 

CONNECTED=false
echo "===> Looking at all the alive connections"

#1) generate list of forwarded connection, cutting the last bit 
FORWARDED_PORTS=$(sudo netstat -ntp | grep ssh | awk '{print $5}' | awk -F "." '{print $4}');

#2) check if there is already a connection
for i in $FORWARDED_PORTS
do
    if [ "$i" = "166:2410" ]; then
	echo '⦿⦿⦿> \"THINKPAD\" is already connected'
	CONNECTED=true
    fi
done

#3) open up connections if they are closed
if [ "$CONNECTED" = false ]; then
    echo '⦿⦿⦿> Connecting to THINKPAD';
    sudo ssh -f -N -R 2410:localhost:22 thinker@86.20.96.166 -p 22;
fi
echo "===> Finished";
