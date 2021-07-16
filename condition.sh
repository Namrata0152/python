#!/bin/bash/

while read d;
do


#d is varibale which read file line by line at a time 
#here we can't use cat because can't won't work in varibale and echo is work like same as a cat on $ varibale

	cpu_percent=`echo $d |awk '{print $3}'`
	memory_percent=`echo $d |awk '{print $4}'`
	disk_space=`echo $d |awk '{print $5}'`
	date=`echo $d |awk '{print $7}'`
	time=`echo $d |awk '{print $8}'`
        file=`echo $d |awk '{print $1}'`


echo "cpu=$cpu_percent"
echo "memory=$memory_percent"
echo "disk=$disk_space"

if [[ $cpu_percent && $memory_percent && $disk_space -gt 50 ]]

then    
	echo "greater than fifty"

	echo $file $time $date

elif [[ $cpu_percent && $memory_percent && $disk_space -lt 50 ]]

then    
	echo "less than equal to fifty"
	 echo $file $time $date
 else
	 "no file found "
fi

done < con.txt
