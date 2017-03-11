#!/bin/bash

#-----Variables------#

KEYWORD='LoggerStream.write\|Logger.warn\|read errors\|connection\|unexplained'

FILE=SudoCMS.log

#------Functions-----#

keyword_search()
{
grep $KEYWORD $FILE
}

newline()
{
printf '\n'
}

keyword_line()
{
newline && keyword_search | grep -n "$1" && newline
}

keyword_count()
{
keyword_search | grep -c "$1"
}

#-----Code------#

clear && newline

printf 'Errors:\n' 

keyword_line ERROR

printf 'Warnings:\n' 

keyword_line WARN 

printf 'Total Errors: ' && keyword_count ERROR

printf 'Total Warnings: ' && keyword_count WARN

# Bonus: Using this sequence of logic sorts the overall errors and warnings by the line number! 
