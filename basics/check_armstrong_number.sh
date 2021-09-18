#!/bin/bash

declare -i num
read -p "Enter the number " num

declare -i result copy_num=$num

while [ $copy_num -gt 0 ]
do
  cur_num=$(($copy_num%10))
  result=$(($result + $cur_num*$cur_num*$cur_num))
  copy_num=$(($copy_num/10))
done

if [ $result -eq $num ]
then
  echo "$num is an armstrong number"
else
  echo "$num is not an armstrong number"
fi
