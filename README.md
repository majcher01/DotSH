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
