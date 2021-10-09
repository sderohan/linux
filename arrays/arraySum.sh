#!/bin/bash

sum() {
	local arr=("$@")
	declare -i sum=0
	for i in ${arr[@]}
	do
		(( sum += $i ))
	done
	echo "Total sum of the array element is $sum"
}

declare -a arr=(1 2 3 4 5 6 7 8 9 10)
sum ${arr[@]}
