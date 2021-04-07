#!/bin/bash

#------1------

# if [ condition ]
# then
# <command>
# fi

#--------2------------

# if [ 5 -lt 8 ]
# then
# echo "That doesn't make sense"
# fi

#--------3------------

# if [ 5 -gt 4 ]
# then
# echo "that is correct"
# else
# echo "That doesn't make sense" 
# fi

#--------4----------

#if [ 5 -gt 4 ] && [ 4 -gt 3 ] && [ 1 -gt 3 ]
#then
#echo "that makes sense"
#else
#echo "that doesn't make sense"
#fi 

#------5------

#if [ 3 -gt 4 ] || [ 2 -gt 3 ]
#then
#echo "that kind makes sense"
#else
#echo "None of this makes sense"
#fi 

#--------6--------

#x=4
#y=8
#if [ $x = $y ]
#then
#echo "x is equal to y"
#fi

#-------7--------

#x=6
#y=8

#if [ $x != $y ]
#then
#echo "x is not equal to y"
#fi

#-----8------

#x=6
#y=8

#if [ $x != $y ]
#then
#echo "$x is not equal to $y"
#fi

#-------9-------

#if [ -d /etc ]
#then
#echo "the /etc directory exists"
#fi

#------10-------

#if [ ! -d /my_cool_folder ]
#then
#echo "my_cool_folder is not there"
#fi

#if [ -f /home/sysadmin/custom_scripts/if_scripts.sh ]
#then
#echo "if_scripts.sh is there"
#fi

#-------11------

if [ $(whoami) = 'sysadmin' ]
then
echo "you are the sysadmin"
else
echo "you are the impostor"
fi