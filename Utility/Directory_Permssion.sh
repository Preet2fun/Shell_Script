# Sanitizing & verifying the directory status is very important before progressing the script. You donot want to mistakenly execute the commands in a wrong directory. 
# We should verify if directory is present and have sufficient permission for the user.
#! /bin/bash

changedir()
{
	DIR_NAME=$1
	# Check if the directory exist?
	[ -d "$DIR_NAME" ] || {
		echo Dir: $DIR_NAME does not exist 
		exit 1
	}

	# Check if the directory is readable
	[ -r "$DIR_NAME" ] || {
		echo Dir: $DIR_NAME not readable
		exit 2
	}

	# Check if we have execute perms on directory
	[ -x "$DIR_NAME" ] || {
		echo Dir: cannot cd to $DIR_NAME
		exit 3
	}

	# Check if the directory is writable
	[ -w "$DIR_NAME" ] || {
		echo Dir: $DIR_NAME not writeable
		exit 4
	}

	cd $DIR_NAME
	echo "Present directory $DIR_NAME"
}

changedir "$1"
