#!/bin/bash
read -p "Enter the N term : " num
result=0
for ((i=1; i<=$num; i++))
do
  result=$((result+$i))
done
echo $result
