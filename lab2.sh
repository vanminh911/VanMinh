#!/bin/bash
clear

folder="c_beginning"
c_beginning_url="https://github.com/vanminh911/VanMinh.git"

folder="c_beginning"
repo_url=$c_beginning_url
if [ -d ${foldr} ]
then
	echo -e "${folder} already exist!"
	echo "try to update"
	cd ${folder}
	git remote update
	count=$(git rev-list HEAD...origin/master --count)
	if [ $count -gt "0" ]
	then
		echo -e "\e[31m"
		read -r -p "Update [y/n] " answer
		echo -e "\e[39m"
		if [ "$answer" = "y" ]
		then 
			git fetch --all
			git reset --hard origin/master
		fi
	fi
	cd -
else
	echo "${folder} not exist"
	git clone $repo_url
	if [ $? -eq "0"]
	then
		echo -e "${folder} repo clone is Ok!"
	fi 
fi
