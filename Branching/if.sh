#!/usr/bin/env bash

COLOR=$1 
if [ $COLOR = "blue" ]
then
  echo "the color is blue"
fi



#else

USER_GUESS=$2
COMPUTER=50

if [ $USER_GUESS -lt $COMPUTER ]
then
  echo "You're too low"
elif [ $USER_GUESS -gt $COMPUTER ]
then
  echo "You're too high" 
else
  echo "You've guessed it"
fi





#fi - used to close an if statement.





