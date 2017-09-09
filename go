#!/bin/bash

for input in "$@"
do
        #echo "$input"
        gvim "$input"
done
