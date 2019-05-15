#!/bin/bash

for f in *.tex sections/*.tex;  do 
    aspell -l en_US -t -c ${f} --extra-dicts=./.aspell.en.pws
done;

