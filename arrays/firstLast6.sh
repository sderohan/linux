#!/bin/bash

: <<'END'

Given an array of ints, return true if 6 appears as either the first or last element in the array. The array will be length 1 or more.
firstLast6([1, 2, 6]) → 1
firstLast6([6, 1, 2, 3]) → 1
firstLast6([13, 6, 1, 2, 3]) → 0

END

function firstLast6() {
	local arr=("$@")
	local length=${#arr[@]}
	(( length -= 1 ))
	if [[ $arr == 6 || ${arr[$length]} == 6 ]]
	then 
		return 1
	else
		return 0
	fi
}

function main() {
	declare -a arr=(1 2 6)
	firstLast6 "${arr[@]}"
	echo $?

	arr=(6 1 2 3)
	firstLast6 "${arr[@]}"
	echo $?

	arr=(8 9 10)
	firstLast6 "${arr[@]}"
	echo $?

	arr=(1 2 2)
	firstLast6 "${arr[@]}"
	echo $?

	arr=(6 2 6)
	firstLast6 "${arr[@]}"
	echo $?

}

main
