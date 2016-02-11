#Printing files > 0B

if [ $# -ne 1 ]
then
	echo "Only 1 arg allowed"
elif [ ! -d $1 ]
then 
	echo "Arg must be dir."
else
	cd $1 #entering in "$1", which is dir.
	count=0	#counter, there aren't blank spaces between "count", "=" and "0"
	for f in *	#"f" - new variable, it stores all("*") types of files from dir. "$1" 
	do
		if [ -f "$f" ]	
		then
			if [ -s "$f" ]
			then
				count=$((count+1))	#increasing "count"
			fi #end of "if"
		fi
	done	#end of "for"
	echo "Number of files > 0B is: $count"
fi
		
