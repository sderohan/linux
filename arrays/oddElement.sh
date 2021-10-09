#!/bin/bash

oddElements() {
	for i in $@
	do
		if(( $i % 2 != 0 ))
		then
			echo -n $i ""
		fi
	done
}

declare -a arr=( 1 2 3 4 5 6 7 8 9 10)
oddElements ${arr[@]}
