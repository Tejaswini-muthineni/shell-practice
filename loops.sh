#!/bin/bash

USER=$( id -u )
G="\e[32m"
R="\e[31m"
N="\e[0m"

if [ $USER -ne 0 ]; then
    echo " take root user access"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "mysql installation.... $R failed $N"
else 
    echo "my sql installation...$G success $N"
fi