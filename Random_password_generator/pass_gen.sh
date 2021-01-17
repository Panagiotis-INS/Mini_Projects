#!/bin/bash
##
pass="";
seed=`date |cut -d " " -f 5`;
echo $seed >.config;
pass=`md5sum .config|cut -d " " -f 1 |base64 |head -c 10`;
echo $pass;
exit 0;
