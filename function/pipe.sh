#!/usr/bin/env bash

FILES=$(ls -l | sort -r | head -3)  #Remmeber commands need execution to work so that's why you put it in $(), unlike environmental variables
COUNT=1

for FILE in $FILES
do
   echo "File #$COUNT = $FILE"
   ((COUNT++))
done

exit 0

#Pipe is a way to pass the output of one command directly as input to another command
	# The output of first command is then used in execution of second command

#background (&) runs a command in the background, allowing you to continue using the terminal


#AND (&&) runs the second command only if the first works
#Semicolon (;) runs the second command anyways regardless if the first worked or not

