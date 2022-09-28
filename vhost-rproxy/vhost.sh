#!/bin/bash

# usage with parameters vhost.sh <filename> <domain> <port> <server-type>

if [ $# -gt 2 ]
then

	if [[ $4 = "httpd" ]]
	then
		cp template-redhat.conf $1
		sed -i "s/DOMENA/$2/" $1
		sed -i "s/PORT/$3/" $1
		exit 0
	fi
	
	cp template.conf $1
	sed -i "s/DOMENA/$2/" $1
	sed -i "s/PORT/$3/" $1
	exit 0
fi

read -p "server type (apache/httpd) "
srvtp=$REPLY

if [[ $srvtp = "httpd" ]]
then
	templatefile="template-redhat.conf"
else
	templatefile="template.conf"
fi

read -p "full filename "
nazwapliku=$REPLY
cp $templatefile $nazwapliku
read -p "domain "
domena=$REPLY
sed -i "s/DOMENA/$domena/" $nazwapliku
read -p "port "
port=$REPLY
sed -i "s/PORT/$port/" $nazwapliku
exit 0
