#!/bin/bash

main() {
	local arr=("$@")
	length=$(( ${#arr[@]} ))

	if (( length < 2 ))
	then
		echo "Min ${arr[0]}  Max ${arr[0]}"
		return
	fi

	declare -i min=${arr[0]} max=${arr[1]}

	if (( min > max ))
	then
		max=$min
		min=${arr[1]}
	fi

	for (( i=2; i<length; i++ ))
	do
		if(( ${arr[$i]} > max ))
		then
			max=${arr[$i]}
		elif (( ${arr[$i]} < min ))
		then
			min=${arr[$i]}
		fi
	done

	echo "Min $min   Max $max"
}

# Pass the command line arguments
main $@
