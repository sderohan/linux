#!/bin/bash

: <<'END'

Given an array of ints, return true if 6 appears as either the first or last element in the array. The array will be length 1 or more.
firstLast6([1, 2, 6]) → 1
firstLast6([6, 1, 2, 3]) → 1
firstLast6([13, 6, 1, 2, 3]) → 0

END

function firstLast6() {
	arr=$1	
	((length=${#arr[@]}-1))
	echo ${arr[0]}
#	if [$arr[0] == 6] || [${arr[$length]}  == 6 ))]]
	if (( 1 == 1 ))
	then
		return 1
	else
		return 0
	fi
}

function main() {
	declare -a arr=(1 2 6)
	echo ${arr[0]}
	#firstLast6 arr
#	((l=${#arr[@]}-1))
#	echo ${arr[0]} $l
	echo $?
}

main
