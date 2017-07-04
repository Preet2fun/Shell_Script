#! /bin/bash

del_file()
{
echo "removing temp file as trap occure"
rm -r /tmp/input0.$$
exit 1
}




Take_Input1()
{
var=0
clear
echo "Doctor appointment Book Application.."
echo -n "Please enter database file : "
read filename


if [ ! -f $filename ];then
  echo "File dose not exists...Making new one"
  echo "Appointment file " > $filename
fi

echo "data entry start date : `date`">>/tmp/input0.$$

while :
  do
	echo -n "Please enter name :"
	read name
	echo -n "Is data OK ? (y/n) : "
	read data

  if [ $data=y -o $data=Y ]; then
    var=`expr $var + 1`
    echo "$var.$name" > /tmp/input0.$$
  fi

  echo -n "Want to enter next appointment (y/n) : "
  read app

  if [ $app=n -o $app=N ]; then
    cat /tmp/input0.$$ > $filename
    rm -r /tmp/input0.$$
    return
  fi
  done
}
trap del_file 2
Take_Input1
