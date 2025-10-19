#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]; then
    echo "user has root access"
    echo " id -u is $USER_ID "
else 
    echo " no root access"
fi


#dnf install mysql -y

#if [ $? -ne 0 ]; then
#   echo "dnf installation failed"
#else
#    echo "installation sucess"
#fi