#!/bin/bash

user_id=$(id -u)

if(($user_id!=0)); then
    echo "You are not autherise..!"
    exit 1
fi

validate(){
    if (($1!=0)); then
        echo "${2}...Success"
        exit 1
    elif(($?==0)); then
        echo "${2}...Fail"

    fi
}



dnf install nginx -y

validate $? "nginx installation"

dnf install mysql -y

validate $? "mysql installation"


