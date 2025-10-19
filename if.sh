#!/bin/Bash

read NUM 
echo " number is $NUM "
if [ $NUM -lt 10 ]; then
    echo " num less than 10 "
elif [ $NUM -eq 10]; then
    echo "num is 10" 
else 
    echo "number is greater than 10"
fi

