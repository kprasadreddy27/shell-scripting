#!/bin/bash

 ### Special Variables ###

echo "All args passed to the script: $@"
echo "Number of args passed to the script : $#"
echo "First variable passed : $1"
echo "Script Name : $0"
echo "Realpath : $(realpath $0)"
echo "Who is running current script : $USER"
echo "Directory of the current script: $PWD"
echo "Home directory of the current user: $HOME"
echo "PID of the current script: $$"
sleep 10 & 
echo "PID of the command running in background now: $!"
wait $! # script waits until $! command complete
echo "Line number : $LINENO"
echo "Previous command exit status: $?"
echo "Total time executed for the script : $SECONDS"

