#!/bin/bash

: <<'END'

Given an array of ints, return true if the array is length 1 or more, and the first element and the last element are equal.


sameFirstLast([1, 2, 3]) → false
sameFirstLast([1, 2, 3, 1]) → true
sameFirstLast([1, 2, 1]) → true
END

sameFirstLast() {
	declare -a array=("$@")
	declare -i length=${#array[@]}

	if (( length == 0))
	then
		return 0
	fi

	(( last = length - 1 ))

	if(( $array == ${array[$last]} ))
	then
		return 1
	else
		return 0
	fi

}

main() {
	declare -a arr=(1 2 3 4 1)
	sameFirstLast "${arr[@]}"
	echo $?

	arr=(10 2 3 4)
	sameFirstLast "${arr[@]}"
	echo $?

	arr=(1 1)
	sameFirstLast "${arr[@]}"
	echo $?

	arr=(1)
	sameFirstLast "${arr[@]}"
	echo $?

	arr=()
	sameFirstLast "${arr[@]}"
	echo $?

}

main
