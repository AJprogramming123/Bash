#!/user/bin/env bash

COUNT=1
END=$1

while [ $COUNT -le $END ]
do
    echo "COUNT = $COUNT"
    ((COUNT++))		# ((...)) used for arimetic operations, allows you to perform calculations without needing let or other methods
done

echo "Loop finished"


