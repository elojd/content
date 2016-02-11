#Making backup files

if [ "$#" -ne "1" ]
then
	echo "Number of args is not equal to 1"
elif [ ! -d "$1" ]	
then
	echo "Arg must be dir."
else
	if [ ! -d $1/COPY ]	#if dir. "COPY" does not exist
	then
		mkdir $1/COPY	#make dir. "COPY"
	fi	#end of "if"
	
	cd $1	#entering "$1" dir.
	for f in *.c	#look for all files with extension ".c"
	do
		echo "$f"	#print the name of "$f"
		cp "$f" ./COPY/$f.bak	#copy to "COPY" as backup(".bac") file
	done	#end of "for"
fi
