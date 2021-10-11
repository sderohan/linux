#!/bin/bash

# Insertion sort algorithm implementation

insertionSort() {
	declare -a array=("$@")
	length=${#array[@]}
	for (( i=1; i < $length; i++ ))
	do
		k=${array[$i]}
		for(( j=i-1; j >= 0 && k < ${array[$j]}; j-- ))
		do
			array[$j+1]=${array[$j]}
		done
		array[$j+1]=$k
	done

	echo ${array[@]}

}

main() {
	insertionSort "$@"
}

main "$@"
