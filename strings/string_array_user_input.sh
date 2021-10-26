#!/bin/bash

declare -a arr

declare -i n
read -p 'Enter the number of words to form string array ' n

for (( i=1; i <= n; i++))
do
  read -p "Enter $i the word " word
  arr[${#arr[@]}]=$word
done

echo "Below is the formed string array"
echo ${arr[@]}
