#!/bin/bash
##
if(($#==0))
then
echo "./finder -u profiles_separated_by_comma"
echo "or -h for help"
exit 1;
fi;
#echo $@>.config;
urls="https://github.com/";
: '
if((`echo $@|grep ["-r"]|wc -l`>0))
then
	urls+="seqrch?q=";
fi;
'
for i in $@
do
	if [[ $i != "-u" ]]
	then
		if [[ $i == "-r" ]]
		then
			break;
		fi;
		xdg-open $urls$i;
	fi;
done;
exit 0;
