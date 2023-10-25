#!/usr/bin/bash

function waitforit () { read -n 1; }

#Lets start with base10 integer math...
X=1
Y=1

#We can add
echo $((X+Y))
Z=$((X+Y))
echo $Z
waitforit


#We can subtract
echo $((13-Y))
waitforit

#We can multiply
let K=12*Z
echo $K
waitforit

#We can divide
echo $((K/(Z+Y)))
waitforit

#We can increment
A=$((X++))
echo $X $A
let X++
echo $X
waitforit

#We can compare
[ $X -gt 2 ]; echo $?
waitforit

#To do decimals... we need to pipe to bc(basic calculator)
echo "5.5 * 1.3" | bc
M="1.2"
echo "$M * 3" | bc
waitforit

