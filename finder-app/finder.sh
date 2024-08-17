#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Please specify files directory as 1st argument and search string as 2nd argument."
	exit 1
fi

filesdir="$1"
searchstr="$2"

if [ ! -d "$filesdir" ]; then
	echo "Files directory path provided - '$filesdir' is not a directory."
	exit 1
fi


file_count=$(find "$filesdir" -type f | wc -l)

match_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $file_count and the number of matching lines are $match_count."
