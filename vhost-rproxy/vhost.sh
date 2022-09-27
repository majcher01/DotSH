#!/bin/bash

# usage with parameters vhost.sh <filename> <domain> <port>

if [ $# -eq 3 ]
then
	
	cp template.conf $1
	sed -i "s/DOMENA/$2/" $1
	sed -i "s/PORT/$3/" $1
	exit 0
fi

read -p "podaj pelna nazwe pliku "
nazwapliku=$REPLY
cp template.conf $nazwapliku
read -p "podaj domene "
domena=$REPLY
sed -i "s/DOMENA/$domena/" $nazwapliku
read -p "podaj port  "
port=$REPLY
sed -i "s/PORT/$port/" $nazwapliku
exit 0
