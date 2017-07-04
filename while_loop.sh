#! /bin/bash


if [ $# -eq 0 ]
then
echo "Please enter argument"
echo "use case : $0 argument"
exit
fi

n=$1
i=1

while [ $i -le 10 ]
do
	echo `expr $i \* $n`
	i=`expr $i + 1`
done


