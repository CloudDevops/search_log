#!/bin/bash

source functions.lib

#-----Code------#

clear && newline

printf 'Errors:\n' 

keyword_line ERROR

printf 'Warnings:\n' 

keyword_line WARN 

printf 'Total Errors: ' && keyword_count ERROR

printf 'Total Warnings: ' && keyword_count WARN

# Bonus: Using this sequence of logic sorts the overall errors and warnings by the line number! 
