#!/bin/bash
# taking user input
echo "Is Sun raises in the east? "
read input
# converting the input to lower case to make the input case insensitive
ignore_case_input=`echo $input|tr '[:upper:]' '[:lower:]'`
# Passing through each of the possible options
case $ignore_case_input in
"y") echo "Agreed"
;;
"n") echo "Disagreed"  
;;
"yes") echo "Agreed"
;;
"no") echo "Diagreed"
;;
*) echo "Invalid input. Please try again"
echo "Possible options are Y or N or Yes or No"
;;
esac