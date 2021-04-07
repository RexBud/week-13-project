#!/bin/bash


output=$HOME/research/sys_info.txt

if [ $UID -ne 0 ]
then
echo "Please run with sudo"
exit
fi

if [ ! -d $HOME/research ]
then 
mkdir $HOME/research
fi

if [ -f $output ]
then
rm -r $output
fi


sudo echo -e "\n777 Files:" >> $output
sudo find / -type f -perm 777 >> $output 
sudo echo -e "\nTop 10 Processes" >> $output
sudo ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $output

echo -e "\nfile permissions\n" >> $output

#file variable
files=('/etc/passwd' '/etc/shadow')

# for command to look in 'files'

for file in ${files[@]}

do 
	#print list with permission to output file
	ls -l $file >> $output 
done
