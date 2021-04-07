#!/bin/bash

my_list=(a b c d e f)

echo $my_list
#echo ${my_list}
#echo ${my_list[0]}
echo ${my_list[3]}
echo ${my_list[@]}

#-------------------

my_list=(mon tues wed thu fri sat sun)

echo $my_list
#echo ${my_list}
#echo ${my_list[0]}
echo ${my_list[3]}
echo ${my_list[@]}

