#!/bin/bash

echo -e "\E[1;35m-----------------------------------------------------"
echo -e "\E[0m "
for line in $(tail -n +2 IP.txt)
do 


a=$(ping -w 3 $line | grep -oP '\d+(?=% packet loss)')


if [ "$a" == "0" ]; then
     echo -e "\E[1;32m$line"
     
else
    echo -e "\E[1;31m$line"
    
fi
done 
echo -e "\E[0m"


