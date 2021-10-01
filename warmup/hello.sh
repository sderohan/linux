#!/bin/bash

#function hello () {
#	echo $0
#	echo $#
#	echo $*
#	echo $@
#}

#hello 1 2 3 4 5 6 7 8 9 10

#echo (( 9+1 ))

t=9

(( t = t + t )) #use only when assign takes place in the one statement
echo $(( t+t )) #no need of $ symbol in such evaluation
echo $t

if (( t > 187))
then
	echo "wins"
fi

let t=t+t
echo "t modified using let keyword " $t
let n=t+10 # there should not be any spaces in let keyword operands
echo "spaces between operands in let keyword does not works" $n

#while using expr there should be the spaces between the operands and operator otherwise the statement is evaluated as the string concatenation
echo `expr $n + 10`
p=`expr $n + 20`
echo $p


