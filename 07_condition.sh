#!/bin/bash

echo "Enter Marks:"
read marks

if(($marks<30)); then
    echo "Fail"
elif(($marks<50)); then
    echo "pass"
elif(($marks<70)); then
    echo "first class"
else
    echo "distinction"
fi

