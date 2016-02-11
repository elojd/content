#Copying from one to another

case $# in
2 | 4 | 6 | 8) #if number of args is even
	while [ $# -ne 0 ]
	do
		if [ -r $1 ]
		then
			cp $1 $2	#copy "$1" to "$2", if "$2" doesn't exist it will make it
			echo "$2 created"
		else
			echo "$1 doesn't exist"
		fi
		shift 2	
		#"shift 2"
		#explanation:
		#sh kopiranje.sh dat1 dat2 da3 dat4 dat5 dat6 ( calling command )
		#"$1" will be "dat1"
		#after shifting "shift 2", "$1" will be "dat3", etc.
		#whenever "shift 2" is called, the number of args "$#" is decreased,
		#in this case by two
	done;;	#end of "while", and with ";;" closing 1st case
1 | 3 | 5 | 7)	#if number of args is odd
	echo "Odd number of arg.";;
0) #if there are no args
	echo "No arg.";;
esac #end of case
