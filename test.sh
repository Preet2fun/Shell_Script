#! /bin/bash

touch abc.txt
rm abc.txt

if [ $? == 0 ] 
then
echo "File deleted successfully"
else
echo "file was not there"
fi

