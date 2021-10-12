#!/bin/bash

:<<'END'
Given an array of ints, return true if the sum of all the 2's in the array is exactly 8.


sum28([2, 3, 2, 2, 4, 2]) true
sum28([2, 3, 2, 2, 4, 2, 2]) false
sum28([1, 2, 3, 4])  false
END

sum28() {
	declare -i sum=0
	for i in $@
	do
		if(( i == 2 ))
		then
			((sum+=i))
		fi
	done
	if((sum == 8))
	then
		return 1
	fi
	return 0
}

main() {
	sum28 $@
	echo $?
}

# Pass the command line arguments

main $@
