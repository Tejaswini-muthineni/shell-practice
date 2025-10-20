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

dnf list installed mysql

if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo -e "mysql is already installed $G skipping $N "
fi

dnf list installed nginx

if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "nginx is already installed $G skipping $N "
fi

