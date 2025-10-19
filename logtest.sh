#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
N="\e[0m"

RED="\e[31m"

echo -e " log file is: $LOGFILE "