#!/bin/bash

declare -i num
read -p 'Enter the number ' num

declare -i bin=0 mul=1
while [ $num -gt 0 ]
do
  result=$(($result + ($num % 2) * $mul))
  mul=$(($mul*10))
  num=$(($num/2))
done

echo $result
