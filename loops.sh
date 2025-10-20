#!/bin/bash

USER=$( id -u )
G="\e[32m"
R="\e[31m"
N="\e[0m"

if [ $USER -ne 0 ]; then
    echo " take root user access"
    exit 1
fi

VALIDATE()
{
    if [ $1 -ne 0 ]; then
        echo -e "$2 installation.... $R failed $N"
    else 
        echo -e "$2 installation...$G success $N"
    fi
}

for PACKAGE in $@
do 
dnf list installed $PACKAGE
if [ $? -ne 0 ]; then
    dnf install $PACKAGE -y
    VALIDATE $? "$PACKAGE"
else
    echo -e "$PACKAGE is already installed $G skipping $N "
fi
done