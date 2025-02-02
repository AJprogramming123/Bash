#!/usr/bin/env bash

NAMES=$@   #This stores all the arugments passed to the script into the variable NAMES

#NAME is used as a title for all the values inside of NAMES like iterations
for NAME in $NAMES
do
    if [ $NAME = "Tracy" ]
    then
       continue
    fi
       echo "Hello $NAME"
done



echo "for loop terminated"
exit 0

#continue skips the current iteration fo the loop and moves to the next iteration
#break Exits the loop entirely, no matter where it is in the process
