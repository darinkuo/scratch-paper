#!/bin/bash

# A script to separate multiple stat dumps from a gem5 simulation.
# Takes as parameters, the path to stats.txt
# Last argument is an outputfolder for storing the results

# Example
# ./divide-stats stats.txt output

# If first line is empty, strip from stats
function strip {
    local firstLine=$(head -1 $1)
    if [ -z "$firstLine" ];
    then
        sed -i '1d' $1
    fi
}

if [ $# -lt 2 ]; then
        echo "./split.sh <stats.txt> <output directory name>"
    else
        echo 'Dividing gem5 stats.txt'
        echo '----------------------------------------------'
        echo 'Creating output directory' $2
        mkdir -p $2
        echo '----------------------------------------------'
        echo 'Splitting stats files:' $1
        strip $1
        csplit -z -f $2'/dump' $1 '/---------- Begin Simulation Statistics ----------/' '{*}'
fi