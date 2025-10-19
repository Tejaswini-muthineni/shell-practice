#!/bin/bash

USER_ID=$(id -u)
echo " user id is : $USER_ID "

if [ $USER_ID -ne 0 ]; then
    echo "user needs root access"
    exit 1
fi


dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MySQL is failure"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi