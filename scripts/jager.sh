#!/bin/sh

#1) generate list of all the connected ports
connectionDestinations=$(sudo netstat -ntp | grep ssh | awk '{print $5}' | awk -F "." '{print $4}');

macmini=false
echo "===> looking at all the alive connections";

#2) check if there are connections to macmini
for i in $connectionDestinations
do
    if [ "$i" = "166:22" ]; then
	echo '===> \"macmini\" is connected'
	macmini=true
    fi
done

#3) open up connections if they are closed
if [ "$macmini" = false ]; then
    echo '===> connecting to macmini';
    sudo ssh -f -N -R 2410:localhost:22 ilyaantonov@86.20.96.166 -p 22;
fi
echo "===> finished";

