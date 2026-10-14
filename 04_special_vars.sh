#!/bin/bash

 ### Special Variables ###

echo "All args passed to the script: $@"
echo "Number of args passed to the script : $#"
echo "First variable passed : $1"
echo "Script Name : $0"
echo "Realpath : $(realpath $0)"
echo "Who is running current script : $USER"
echo "Directory of the current script: $PWD"
