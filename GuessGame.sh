#!/bin/bash

scorefile="highscores_bash"
guess=-1
typeset -i num=0

echo -e "guess.bash - Guess a number between 1 and 128\n"

### Generate random number
(( answer = RANDOM % 128 + 1 ))

### Play game
while (( guess != answer )); do
	num=num+1
	read -p "Enter guess $num: " guess
	if (( guess < answer )); then
		echo "Higher guess please"
	elif (( guess > answer )); then
		echo "Lower guess please"
	fi
done
echo -e "Correct! That took $num guesses.\n"

### Save high score
read -p "Please enter your name: " name
echo $name $num >> $scorefile

### Print high scores
echo -e "\nPrevious high scores," 
cat $scorefile