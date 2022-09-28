#!/bin/bash

if [[ $# -eq 1 ]]
then
	domain=$1
	webroot="/var/www/$1"
	webmastermail="webmaster@webserver.local"
	filename=$1.conf

	mkdir $webroot

	cp template.conf $filename

	sed -i "s/DOMAIN/$domain/" $filename
	sed -i "s/SRVNAME/$domain/" $filename
	sed -i "s:DCROOT:$webroot:" $filename
	sed -i "s/WEBMASTER/$webmastermail/" $filename
	
	certbot certonly --apache -d $1	

	exit 0
fi

if [ $# -eq 3 ]
then
	domain=$1
	webroot=$2
	webmastermail=$3
	filename=$1.conf

	mkdir $webroot

	cp template.conf $filename

	
	sed -i "s/DOMAIN/$domain/" $filename
	sed -i "s/SRVNAME/$domain/" $filename
	sed -i "s:DCROOT:$webroot:" $filename
	sed -i "s/WEBMASTER/$webmastermail/" $filename

	certbot certonly --apache -d $1	
	exit 0
fi

read -p "domain "
domain=$REPLY

read -p "webroot "
webroot=$REPLY

read -p "webmaster mail "
webmastermail=$REPLY

mkdir $webroot
filename=$domain.conf
cp template.conf $filename

sed -i "s/DOMAIN/$domain/" $filename
sed -i "s/SRVNAME/$domain/" $filename
sed -i "s:DCROOT:$webroot:" $filename
sed -i "s/WEBMASTER/$webmastermail/" $filename

certbot certonly --apache -d $domain

exit 0

