#!/bin/bash

read -p 'Specify directory to look up for repos (absolute path) (1 for current dir): ' rep1
if [ $rep1 != 1 ]
then
	workdir=$rep1
	cd $workdir &> /dev/null
fi
repos=( $(find -maxdepth 2  -name .git | grep -o -P '(?<=/).*(?=/)') )
if [ ${#repos[@]} -eq 0 ]; then
	echo "Directory does not contain git repos"
	exit 0
fi

echo ""
echo "Found repos:"
#printf "%s 1 \n" "${repos[@]}"
x=0
for i in "${repos[@]}"
do
	echo "$x) $i"
	((x=x+1))
done
echo ""
read -p "Select repos to update (numbers separated by spaces): " rep2
uprep=($rep2)

if [[ $# -eq 1 ]]
then
	username=$1
	read -p "Insert github access key: " key
elif [[ $# -eq 2 ]]
then
	username=$1
	key=$2
else

	read -p "Insert your github username: " username
	read -p "Insert github access key: " key
fi

for a in ${uprep[@]}
do

sed -i "s/$username:.*@github.com/$username:$key@github.com/g" ${repos[$a]}/.git/config

done
echo "
**********
*        *
*  DONE  *
*        *
**********

"
exit 0
