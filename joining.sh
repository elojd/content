#Copying first two lines of "$1" to "headers"

echo "Enter extension:"
read ext
if [ -f "./headers" ]
then
	rm headers
fi
for fname in "$1/*.$ext"
do
	echo "Adding two first lines of $fname"
	head -2 $fname >> headers
done
