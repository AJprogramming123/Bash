#!/usr/bin/env bash

#Two ways to do this:

function Hello() {
  local LNAME=$1		#Local variable is a variable that only exists inside the function.
	#The local keybword makes the variable only available inside the function where it is declared
  echo "Hello $LNAME"

}


Goodbye() {
  
   echo "Goodbye $1"

}


echo "Calling the Hello function"
Hello Bob

echo "Calling the Goodbye function"
Goodbye Robert




exit 0



