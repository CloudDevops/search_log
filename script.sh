#!/bin/bash

#-----Variables------#

# KEYWORDS="LoggerStream.write\|Logger.warn\|read errors\|connection\|unexplained"
# KEYWORD1='LoggerStream.write'
# grep KEYWORD1\|KEYWORD2\|...\|...\|KEYWORD5\| a possiblity

FILE='SudoCMS.log'

#------Functions-----#

keyword_search()
{
grep 'LoggerStream.write\|Logger.warn\|read errors\|connection\|unexplained' $FILE
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
