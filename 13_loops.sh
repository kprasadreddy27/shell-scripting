#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-scripting"
log_file="${logs_folder}/${0}.log"

if(($user_id!=0)); then
    echo "You are not autherise..!"
    exit 1
fi

mkdir -p ${logs_folder}

echo "Script start execution at : $(date +"%Y-%m-%d %r")"
validate(){

    if (($1!=0)); then
        echo "${2}...Fail" | tee -a ${log_file}
        exit 1
    elif(($1==0)); then
        echo "${2}...Success" | tee -a ${log_file}

    fi
}

for package in $@
do
    dnf list installed $package
    if (($?!=0)); then
        echo "Going to install ${package}"
        dnf install ${package} -y &>> $log_file
        validate $? "${package} installing"
    else
        echo "Already $package installed."
    fi
done