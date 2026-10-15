#!/bin/bash

user_id=$(id -u)

if(($user_id==0)); then
    dnf instal nginx -y
else
    echo "you don't have sudo access."
fi