#!/bin/bash
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
