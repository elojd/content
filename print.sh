#Printing content

if test "$#" -ne "1"
then 
    echo "Only 1 arg allowed"
else
	if test -f $1	#if "$1" is file
        then
            cat $1	#print "$1"
        elif test -d $1	#if "$1" is dir.
        then 
            cd $1;ls -al
        else
            echo "Error"
        fi
fi
