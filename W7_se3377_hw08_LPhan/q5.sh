#!/bin/bash
echo "Enter three words"
read -p word1
read -p word2
read -p word2
if [ "$word1" == "$word2" ] || [ "$word1" == "$word3" ] ; then
echo "$word1 is repeated"
elif [ "$word2" == "$word3" ]; then
echo "$word2 is repeated"
else
echo "All three are different words"
fi