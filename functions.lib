#-----Variables------#

# KEYWORDS="LoggerStream.write\|Logger.warn\|read errors\|connection\|unexplained"
# KEYWORD1='LoggerStream.write' could be used if the variables were called multiple times or for streamlining
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
