#!/bin/bash

# Bubble sort algorithm implementation

bubbleSort() {
	declare -a array=("$@")
	declare -i length=${#array[@]}
	for (( i=0; i < length-1; i++ ))
	do
		local flag=0
		for (( j=0; j < length-i-1; j++ ))
		do
			flag=1
			if (( ${array[$j]} > ${array[$j+1]} ))
			then
				# swap the elements
				temp=${array[$j]}
				array[$j]=${array[$j+1]}
				array[$j+1]=$temp
			fi
		done
		if (( flag == 0))
		then
			break
		fi
	done
	echo ${array[@]}
}

main() {
	bubbleSort "$@"
}

main "$@"
