#!/bin/bash

keyword_search()
{
grep 'LoggerStream.write\|Logger.warn\|read errors\|connection\|unexplained' SudoCMS.log
}

clear

printf '\n'

printf 'Errors:\n' && printf '\n' 

keyword_search | grep -n ERROR && printf '\n'

printf 'Warnings:\n'

printf '\n'

keyword_search | grep -n WARN && printf '\n'

printf 'Total Errors: ' 

keyword_search | grep -c ERROR

printf 'Total Warnings: '

keyword_search | grep -c WARN

# Bonus: Using this sequence of logic sorts the overall errors and warnings by the line number! 
