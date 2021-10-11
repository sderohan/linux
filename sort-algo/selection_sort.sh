#!/bin/bash

# Selection sort algorithm implementation

selectionSort() {
	declare -a arr=("$@")
	declare -i length=${#arr[@]}
	for (( i=0; i < length; i++ ))
	do
		local min=$i
		for (( j=i+1; j < length; j++ ))
		do
			if (( ${arr[$min]} > ${arr[$j]} ))
			then
				min=$j
			fi
		done
			
		if (( min != i ))
		then
			local tmp=${arr[$min]}
			arr[$min]=${arr[$i]}
			arr[$i]=$tmp
		fi
	done

	echo ${arr[@]}
}

main() {
	selectionSort "$@"
}

main "$@"
