#!/usr/bin/bash
source waitforit

echo "The number of cmdline arguments is " $#
echo "The cmdline input is " $@
echo "The first argument is " $1
echo "The second argument is " $2
waitforit


echo
echo
echo "What is the value of $0 ??? -->>" $0 
waitforit

echo "Lets get some user input..."
echo "What is your favoriate color??"
read -r fav_color

echo "What is your favoriate food??"
read -r fav_food

echo "I know you like to eat " $fav_food " and things that are " $fav_color


