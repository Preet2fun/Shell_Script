#! /bin/bash

if [ -z $1 ]
then
	rental="*********** unknown vehical ********"
elif [ -n $1 ]
then
	rental=$1
fi

case $rental in
	"car") echo "rent for $rental is 15/km";;
	"scooter") echo "rent for $rental is 25/km";;
	"train") echo "rent for $rental is 35/km";;
	*) echo "rent for $rental is not available";;
esac
