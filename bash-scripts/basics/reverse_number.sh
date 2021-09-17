#!/bin/bash

declare -i num
read -p "Enter the number " num

echo "Before reverse $num"

declare -i result=0
while [ $num -gt 0 ]
do
  result=$(( $result * 10 + $num % 10 ))
  num=$(($num/10))
done

echo "After reverse $result"
