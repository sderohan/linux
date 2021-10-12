#!/bin/bash

:<<'END'

Given an array of ints, return true if every element is a 1 or a 4.


only14([1, 4, 1, 4]) → true
only14([1, 4, 2, 4]) → false
only14([1, 1]) → true

END


only14() {
	for i in $@
	do
		if (( i == 1 || i == 4 ))
		then 
			continue
		else 
			return 0
		fi
	done
	return 1
}

main() {
	only14 $@
	echo $?
}

main $@
