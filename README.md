# DotSH
collection of bash scripts

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

