#!/bin/bash
    # Basic while loop
    counter=1
    until [ $counter -gt 100 ]
    do
    echo $(( ( RANDOM % 100 ) + 1 )) >> random_data.txt #this line will generate random data and store it in random_data.txt file
    ((counter++))
    done
    echo All done