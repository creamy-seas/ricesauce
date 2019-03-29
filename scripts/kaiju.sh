#!/bin/sh

#1) generate list of all the connected ports
connectionDestinations=$(sudo netstat -ntp | grep ssh | awk '{print $5}' | awk -F "." '{print $4}');

vlad=false
echo "===> looking at all the alive connections";

#2) check if there are connections to vlad
for i in $connectionDestinations
do
    if [ "$i" = "166:6769" ]; then
	echo '===> \"vlad\" is connected'
	vlad=true
    fi
done

#3) open up connections if they are closed
if [ "$vlad" = false ]; then
    echo '===> connecting to \"vlad\"';
    sudo ssh -f -N -R 6767:localhost:22 vladimirantonov@86.20.96.166 -p 6769;
fi
echo "===> finished";

#echo "===> finished";
#1) search netstat for running ssh
#2) extract the 7th column, and extract the process number from it
 #connectionList=$(sudo netstat -ntp | grep ssh | awk '/ssh/ {print $7}' #| awk -F "/" '{print $1}');
#
#echo $
#
##3) if there are no ssh things running, load then up
#if [ -z "$connectionList" ]; then
#    echo "===> 0 connection so far"
#    echo "===> establishing connection vlad";
#    ssh -f -N -R 2410:localhost:22 ilyaantonov@86.20.96.166 -p 22;
#    echo "===> establishing connection vlad";
#    ssh -f -N -R 6767:localhost:22 vladimirantonov@86.20.96.166 -p 6769;
#elif [ ${#connectionList[@]} -gt 3 ]; then
#    echo "===> killing redundant connections";
#    for i in $connectionList
#    do
#	echo "===> killing process $i";
#	kill $i;
#    done
#    echo "===> establishing connection vlad";
#    ssh -f -N -R 2410:localhost:22 ilyaantonov@86.20.96.166;
#    echo "===> establishing connection vlad";
#    ssh -f -N -R 6767:localhost:22 vladimirantonov@86.20.96.166 -p 6769;
#else
#    echo "===> ${#connectionList[@]} connection(s) is up";
#fi

