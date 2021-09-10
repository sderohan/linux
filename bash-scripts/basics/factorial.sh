#!/bin/bash
read -p "Enter the number to find factorial : " num
result=1
for (( i=2; i<=num; i++))
do
  result=`expr $result \* $i`
done

echo "The factorial of the number $num is $result"
