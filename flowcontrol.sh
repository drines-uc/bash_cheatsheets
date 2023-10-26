#!/usr/bin/bash
source waitforit

#Lets start with if statements

if [ 2 -eq 2 ]; then
    echo "Yes two == 2"
fi
waitforit


if [ 2 -gt 2 ];
then
    echo "that isn't right"
else
    echo "this is more like it"
fi
waitforit

#How about a case statement
case $1 in
    1)
	echo "First Param is 1"
	;;
    2)
	echo "First Parm is 2"
	;;
    *)
	echo "ITs not 1 or 2"
	;;
esac
waitforit

#Lets loop

#whileloop
counter=1
while [ $counter -le 10 ]
do
    echo $counter
    ((counter++))
done
waitforit

#untilloop
counter=1
until [ $counter -gt 10 ]
do
    echo $counter
    ((counter++))
done
waitforit

#forloop
for value in {1..5}
do
    echo $value
done
waitforit

for value in {10..0..2}
do
    echo $value
done
waitforit


#contiues...
for value in {1..10}
do
    mymod=$((value % 2))
    if [ $mymod -ne 0 ]; then
	continue
    fi
    echo $value
done
waitforit

#breaks ..
for value in {1..10}
do
    if [ $value -eq 5 ]
    then
	break;
    fi
    echo $value
    
done
waitforit


