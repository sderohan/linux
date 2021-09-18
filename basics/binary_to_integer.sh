#!/bin/bash

declare -i binary
read -p 'Enter the binary ' binary

declare -i result mul=1
while [ $binary -gt 0 ]
do
  result=$(($result + $mul * ($binary % 10)))
  binary=$(($binary/10))
  mul=$(($mul*2))
done

echo $result
