#!/bin/bash

*** These environment variable are defined in /home/ec2-user -> .bashrc ( works only for ec2-user) ***

echo $DEVELOPER
echo $EXPERIENCE

*** These environment variable are defined in /etc/profile.d/*.sh ( works for all users) ***

echo $ENG