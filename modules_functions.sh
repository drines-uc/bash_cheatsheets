#!/usr/bin/bash

#Some Variables
my_var_1='One'
my_var_2='Two'

#Lets pull in another file
source modules


#Define some functions

function func_one () {
    echo "This one format for creating a function"
    echo "This function has 1 argument $1"
}

two () {
    echo "You can also define a function this way"
    echo "This funtion has a return value..."
    return 2
}

function singleline () { echo "You can do it in one line... don't forget semi-colon"; }

wait_on_enter () { read -n 1;}

test_scope () {
    local my_var_1='Three'
    my_var_2='Four'
    echo "From inside ${FUNCNAME[0]}: my_var_1 = $my_var_1 my_var_2 = $my_var_2"
}


#Call Some functions

echo "Call func_one"
func_one "HI"
echo

echo "Call two"
two
echo $?
echo

echo "Call singleline"
singleline
echo

echo "Can we access my_var_3?? $my_var_3"
echo

echo "Can we call import_me from modules.sh?"
import_me
echo

echo "Before we call test_scope: my_var_1 = $my_var_1 my_var_2 = $my_var_2"
echo ""
wait_on_enter
test_scope
wait_on_enter
echo ""
echo "After we call test_scope: my_var_1 = $my_var_1 my_var_2 = $my_var_2"









