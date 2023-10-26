#!/usr/bin/bash

#Lets read a file line by line...

file_in="firenice"
while IFS='' read -r line
do
    echo $line
    echo "..."
done < $file_in
    
file_out="mypoem"
echo "I am a poet and I don't know it" >> $file_out
echo "My arms and legs down show it" >> $file_out
echo "But my feet sure do..." >> $file_out
echo "They are longfellas..." >> $file_out

file_out="example"
echo "Line one" > $file_out
echo "Line two" > $file_out
