#!/usr/bin/env bash

GetFiles()
{
 FILES=$(ls -a | grep '\.sh' | sort | head -10)

}

function ShowFiles()
{
   local COUNT=1
	for FILE in $@
	do
		echo "FILE #$COUNT = $FILE"
		((COUNT++))
	done
}


GetFiles
ShowFiles $FILES

exit 0

#grep - filters the list of files to include only those with .sh in the filename
#sort - sorts the fiels alphabetically
#head - Displays the top 10 files (after sorting)

