#!/bin/sh
if [ $# -ne 2 ] ; then
	echo "invalid order. arguments number unsatisfied"
	exit 0
elif [ $1 -le 0 ] || [ $2 -le 0 ];
then
	echo "input paramter should be positive integer"
	exit 0
fi

i=1
j=1

while [ "$i" -le $1 ]
do
        while [ "$j" -le $2 ]
	do
		result=`expr $i \* $j`
		echo -n "$i*$j=$result \t"
		j=$(( j + 1 ))
	done
i=$(( i + 1 ))
j=1
echo " "
done




echo "you good man"

exit 0
