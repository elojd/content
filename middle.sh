#Printing text between "$1" and "$2"

if [ "$#" -ne "3" ]
then
	echo "Number of args is not equal to 3"
elif [ ! -f "$3" ]
then
	echo "3rd arg must be file"
else
	tail -n+$1 $3 | head -n$(($2-$1+1))
	#"tail -n+N M" - printing the last N lines from M
	#"head -nN M" - printing the first N lines from M
	#"|", explanation:
	#echo "asdf" | echo "ghij" (command)
	#you will get: "asdfghij"
fi
