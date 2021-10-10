#!/bin/bash

linearSearch() {
	# key is passed as at index 0 in arrray
	local array=("$@")
	key=${array[0]}
	length=${#array[@]}
	for(( i=1; i<$length; i++))
	do
		if(( $key == ${array[$i]} ))
		then
			echo "Key $key found at index $((i-1))"
			return
		fi
	done
	echo "Key $key is not present in array"
}

main() {
	# Here the key is passed at index 0 in array, and in this example it is 10
	declare -a arr=(10 1 2 3 4 5 6 7 8 10 9 )
	linearSearch ${arr[@]}
}

main

