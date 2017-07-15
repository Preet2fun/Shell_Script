#! /bin/bash

check_process()
{
	echo "Checking process $1 is running or not..."
	
	[ "$1" = "" ] && return 0
	Process_Num=$(ps -ef | grep "$1" | grep -v "grep" | wc -l)
	
	echo $Process_Num
	if [ $Process_Num -ge 1 ]; then
		return 1
	else
		return 0
	fi
}

check_process $1
Pro=$?;
echo $Pro
if [ $Pro -ne 0 ]; then
	echo "Process $1 is running"
else
	echo "Process $1 is not running"
fi	

