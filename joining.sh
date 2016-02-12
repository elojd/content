#Copying from one file to another 

read tmp;	#input

while [ "$tmp" != "END" ]
do
	if [ -f "$tmp" ]	#if it's file
	then
		cat "$tmp" >> join.dat	#content of "$tmp" copy to "join.dat"
	else
		echo "Arg is not file"
	fi	#end of "if"
	read tmp; #don't forget to read again
done #end of "while"
