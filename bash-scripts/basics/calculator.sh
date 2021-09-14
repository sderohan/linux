#!/bin/bash
read -p "Enter first number : " num1
read -p "Enter second number : " num2

while :
do
  echo "Select the below options"
  printf '1 -> Add \n2 -> Subtract \n3 -> Multiply \n4 -> Divide \n5 -> Exit\n'
  read option
  case $option in
    1)
      echo $(($num1 + $num2))
      ;;
    2)
      echo $(($num1 - $num2))
      ;;
    3)
      echo $(($num1 * $num2))
      ;;
    4)
      if [[ $num2 -eq 0 ]]
      then
        echo "Divide by zero error"
      else
        echo $(($num1 / $num2))
      fi
      ;;
    5)
      exit 1
      ;;
    *)
      echo "Select the proper choices displayed"
  esac
done
