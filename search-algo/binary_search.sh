#!/bin/bash

binarySearch() {
	local array=("$@")
	declare -i key=${array[0]} low=1 high=${#array[@]}
	((high--))
	
	while (( $low <= $high ))
	do
		mid=$(( (low + high) / 2 ))
		if(( ${array[$mid]} == $key ))
		then
			echo "Key $key is found at index $((mid-1))"
			return
		elif(( $key > ${array[$mid]} ))
		then
			((low=mid+1))
		else
			((high=mid-1))
		fi
	done

	echo "$key is not present in ${array[@]}"
}

main() {
	declare -a array=(10 1 2 3 4 5 6 7 8 9 10)
	binarySearch ${array[@]}
}

main
