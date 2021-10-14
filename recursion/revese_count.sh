#!/bin/bash

# Reverse counter using recursion in bash

counter() {
	if [ $1 -le 0 ]
	then
		return
	fi
	echo -n $1 " "
	counter $(( $1 - 1 ))
}

main() {
	counter $1
	echo
}

main $1
