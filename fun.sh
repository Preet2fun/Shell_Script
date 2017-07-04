#! /bin/bash

sayhello()
{
echo "Hey $LOGNAME , welcome to wonderlan!!!!!!!!!!!!"
return
}

sayhello

while :
do
  clear
  echo "Main Menu...."
  echo "Press 1 for food"
  echo "Press 2 for Water"
  echo "Press 3 for exit"
  echo -n "enter your choice : "
  read NUMBER
	case $NUMBER in
	1) echo "Please take your foor";;
	2) echo "Please take your water";;
        3) echo "Thanks for visiting"; exit 0;;
        *) echo "ooooooopppppppsssssssss u have enetr wrong one";;
	esac

done

