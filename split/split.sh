#!/bin/bash

# A script to separate multiple stat dumps from a gem5 simulation.
# Takes as parameters, the path to stats.txt
# Last argument is an outputfolder for storing the results

# Example
# ./divide-stats stats.txt output

if [ $# -lt 2 ]
    then
        echo "./split.sh <stats.txt> <output directory name>"
    else
        echo 'Dividing gem5 stats.txt'
        echo '----------------------------------------------'
        echo 'Creating output directory ' $2
        mkdir -p $2
        echo '----------------------------------------------'
        echo 'Splitting stats files: ' $1
        csplit -z -f $2'/dump' $1 '/---------- Begin Simulation Statistics ----------/' '{*}'

        # remove the first file since it's just whitespace (temporary solution)
        rm $2/dump00
fi