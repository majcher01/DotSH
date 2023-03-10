# DotSH
collection of bash scripts, all are tested on debian based distros

## vhost-rproxy
automation of creating apache HTTP reverse proxies. <br>
template.conf needs to be in same directory as script. <br>
usage with parameters: <br>
```
./vhost.sh <full_filename> <domain> <port>
 ```
 You can add httpd as 4th parameter to change server type, script will use redhat vhost template. <br>
usage without parameters: script will ask for data

## vhost-create
automation of creating apache virtualhosts + obtainig certificate. <br>
template.conf needs to be in same directory as script. <br>
usage with parameters:<br>
```
./vhost-create.sh <domain> <documentroot> <webmaster-mail>
```
You can specify only one parameter - domain, script will use ```/var/www/<domain>``` as webroot and default webmaster mail

## EndSession
script for ending user session, put on desktop and change icon

## change-git-key
script for changing github access key in multiple repos at once
<br>
available parameters:
<br> username and key
<br>example<br>
```
./changekey.sh majcher01 mynewaccesskey
```
