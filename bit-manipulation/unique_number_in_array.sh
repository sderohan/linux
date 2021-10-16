#!/bin/bash

# Program to find the unique number in array 
# Input array will have the only one unique element and other all are repeated even number of times

declare -a arr=( 1 1 2 2 3 4 4 5 5 5 5 )
declare -i num
for i in ${arr[@]}
do
	(( num ^= i ))
done

echo "Unique number in array $num"

