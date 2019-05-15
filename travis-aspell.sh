#!/bin/bash
unknown="unknown_words.txt"

> $unknown

for f in *.tex sections/*.tex;  do 
    aspell list -l en_US -t -a --extra-dicts=./.aspell.en.pws <  ${f} >> $unknown
done;

filesize=$(stat -c%s $unknown)

if ((filesize > 0)); then
    echo "Unknown words found:"
    cat $unknown
    exit 1
else
    echo "No unknown words found"
    exit 0
fi
