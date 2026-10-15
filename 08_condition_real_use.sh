#!/bin/bash

user_id=$(id -u)

if(($user_id==0)); then
    dnf install nginx -y
else
    echo "you don't have sudo access."
    exit 1
fi

if(($?!=0)); then
    echo "previous command failed"
    exit 1
else
    dnf install mysql -y
fi