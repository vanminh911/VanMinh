#!.bin/bash

folder="c_beginning"
c_beginning_url="https://github.com/vanminh911/VanMinh.git"

if [ -d ${folder} ]
then
	echo "OK"
else
	echo " folder not exist"
	git clone ${c_beginning_url}
fi

