#!/bin/bash

URL="https://guvi.in"

http_status_code=$( curl -o /dev/null -s -w"%{http_code}" "$URL" )
echo " Status Code : $http_status_code"

if [[ $http_status_code -ge 200 && $http_status_code -lt 300 ]]
then 
	echo "Success : Website is reachable!"
else
	echo "Failure : Website is not reachable!"
fi

