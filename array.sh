#!/usr/bin/bash

function waitforit () { read -n 1; }

#Lets Create some arrays
MyArray=("One" "Two" "Three")
MyOtherArray=()

#Lets print
echo ${MyArray[*]}
echo ${MyArray[0]}

waitforit

#Add to an array
echo ${MyOtherArray[*]}
MyOtherArray+=(7)
echo ${MyOtherArray[*]}

waitforit

#Lets loop...
#Loop via elements
for t in ${MyArray[@]}; do
    echo $t
done

waitforit

#Loop via index
for t in ${!MyOtherArray[@]}; do
    echo $t
done

waitforit

#Lets check array size
echo ${#MyArray[@]}

waitforit

NewArray=( $(ls) )
echo ${NewArray[@]}

