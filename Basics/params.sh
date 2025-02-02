#!/usr/bin/env bash

#parameters sort of like asking for words, scanner.io object
#Positional Parameters ($1, $2, etc.)
#Special Variables ($@, $#, $?, etc.)
#Command Substitution ($(), ` `)
#Exit Codes ($?)

USER_NAME=$1
echo Hello, $USER_NAME
echo $(date)
echo $(pwd)


exit 100 
#echo $?
