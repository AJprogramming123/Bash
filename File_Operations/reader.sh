#!/usr/bin/env bash
COUNT=1

while IFS='' read -r LINE	
#IFS (Internal field separator) to an empty string ensuring the entire line is read, including spacces and tables
#


do
    echo "LINE $COUNT: $LINE"
	((COUNT++))
done < "$1"

exit 0


#The script is meant to print each line form the file along with its line number, starting at 1.
