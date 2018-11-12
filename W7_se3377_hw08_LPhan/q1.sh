#!/bin/bash
one=$(($RANDOM%10+1))
two=$(($RANDOM%10+1))
echo $one
echo $two
if [ "$one" -eq "$two" ]
then
echo "Match Found"
else
echo "Different Numbers"