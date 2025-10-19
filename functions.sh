#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
    echo "take root user access"
    exit 1
fi

VALIDATE() {
    if [ $1 -ne 0 ]; then
        echo "installation of $2 failed"
        exit 1
    else
        echo "installation of $2 successfull"
    fi
}

dnf install mysql -y
VALIDATE $? 

dnf install nginx -y
VALIDATE $? 

dnf install python3 -y
VALIDATE $? 