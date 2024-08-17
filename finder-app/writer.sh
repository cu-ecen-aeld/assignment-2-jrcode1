#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Please provide path for file to be written as 1st argument and string to be written as 2nd argument."
	exit 1
fi

writefile="$1"
writestr="$2"

mkdir -p "$(dirname "$writefile")"

if echo "$writestr" > "$writefile"; then
	echo "'$writefile' file created successfully withh the content '$writestr'"
else
	echo "Error in creating file '$writefile'."
	exit 1
fi
