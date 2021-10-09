#!/bin/bash

main() {
	# get the array
	local arr=("$@")
	echo "Before reverse " ${arr[@]}
	# reverse the array
	length=${#arr[@]}
	((length-=1))
	for(( i=0,j=$length; i < j; i++,j--))
	do
		temp=${arr[$i]}
		arr[$i]=${arr[$j]}
		arr[$j]=$temp
	done
	echo "After reverse " ${arr[@]}
}

declare -a arr=(1 2 3 4 5 6 7 8 9 10)
main ${arr[@]}
