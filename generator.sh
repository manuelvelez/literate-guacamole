#!/bin/bash


DATE=$(date +%F%T)
if (( $RANDOM % 2 == 0 ))
then
	DIR=$(date +%Y%m)
	FILE=$(date +%d)
	mkdir -p $DIR
	echo $DATE "whatever" >> $DIR/$FILE
	git add $DIR/$FILE
	git commit -m "new commit in $DIR/FILE"
	git push origin main
else
	mkdir -p logs
    	echo "Doing nothing on $DATE" > logs/file.txt
fi
