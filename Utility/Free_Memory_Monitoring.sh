# At times, we need to monitor the high CPU usage in the system. We can use the below script to monitor the high CPU usage.

#! /bin/bash
#Configure  system memory in below variable.
TOTAL_MEMORY=1000
MIN_MEMORY=800

# Configure admin email ID.
ADMIN=pratik


while [ true ];
do

used=`free -m | awk 'NR==3 {print $4}'`

if [ $used -lt $TOTAL_MEMORY ] && [ $used -gt $MIN_MEMORY ]; then
echo "Free memory is below $TOTAL_MEMORY MB. Possible memory leak!!!" | /bin/mail -s "HIGH MEMORY ALERT!!!" $ADMIN
fi

sleep 5
done




