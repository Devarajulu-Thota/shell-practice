#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
fi

dnf install mysqldsfs -y

if [ $? -eq 0 ]
then
    echo "Installing MYSQL is ... SUCCESS"
else
    echo "Installing MYSQL is ... FAILURE"
    exit 1
fi