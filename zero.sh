#Printing files == 0

if [ "$#" -ne "1" ]
then
	echo "Number of args must be 1"
else
	for f in $( locate $1 )
	do
		[ -f "$f" ] && [ -s "$f" ] || echo "$f"
	done
fi
