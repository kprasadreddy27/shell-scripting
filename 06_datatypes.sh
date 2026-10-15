#!/bin/bash

var1=10
var2=20
var3="kpr"

echo "$var1+$var2"
echo $(($var1+$var2))

echo $(($var1+var2+var3))


declare -i count=5 # I am declaring as integer

echo $count+1