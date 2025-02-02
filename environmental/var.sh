#!/usr/bin/env bash

echo "The PATH is: $PATH"       #An (environment variable) in UNIX like environment that tells the system where to look for executable files.

echo "The terminal is: $TERM"
echo "The editor is: $EDITOR"

if [ -z $EDITOR ]               # -z checks if a string is empty or undefined
then
    echo "The EDITOR variable is not set"
fi

PATH="/bob"    #Just turns it into a string
echo "The PATH is: $PATH"

#Variables are very sensitive even spaces can cause an error so for variables dont put spaces


