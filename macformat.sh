#!/bin/bash

for file in $(ls *.1)
do
 sed 's/\.//g' $file |sed 's/\(..\)/\1:/g;s/:$//' > $file.2

done

