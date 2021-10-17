#!/bin/bash

# Integer to binary conversion using bit manipulation

binary() {
	declare -i num=$1 bin=0 prod=1
	while [ $num -gt 0 ]
	do
		local bit=$(( num & 1 ))
		(( bin = bin + ( bit * prod ) ))
		(( num >>= 1 ))
		(( prod *= 10 ))
	done
	echo $bin
}

main() {
	echo $(binary $1)
}

main $1
