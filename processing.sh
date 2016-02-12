if [ "$#" -ne "1" ]	
then
	echo "Only 1 arg allowed"
elif [ -f "$1" ]	#if "$1" is file
then
	case $1 in	#similar to "switch($1)" in C/C++
		*.c)
			gcc $1;;
		*.h)
			cat $1;;
		*)
			rm $1;;
	esac	#end of "case"
else
	echo "Arg is not file"
fi	#end of "if"
