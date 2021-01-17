#!/bin/bash
##
pass="";
if(($#==0))
then
	len=10;
else
	len=$1;
fi;
seed=`date |cut -d " " -f 5`;
echo $seed >.config;
pass=`md5sum .config|cut -d " " -f 1 |base64 |head -c $len`;
echo $pass;
exit 0;
