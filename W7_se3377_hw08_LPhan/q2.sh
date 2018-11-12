#!/bin/bash
if [ $# -ne 1 ]
then
echo "Wrong input. No arguments supplied. Please try again....."
echo "Usage: $0 <number>"
exit 1
fi
input_num=$1
RANGE=10
num=$RANDOM
correct_guess=`expr $num % $RANGE`
if [ $input_num -eq $correct_guess ]
then
echo "heeeeeeeee!!! Yes. You guessed correctly"
else
echo "ohoooo!!! Sorry. Your guess is wrong"
fi