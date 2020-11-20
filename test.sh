#!/bin/bash
#Written by Peter Han

usage()
{
	echo ""
	echo "# Usage : "
	echo " ./test.sh <input_file_name> "
	echo " -h   Help"
	echo "ex) ./devops.sh sar.file"
	exit
}

main_proc()
{
        if [ $1 == "-h" ]; then
		usage;
        else
             echo "You choose \"$1\" file"
             sed -e '/평균값/d' -e '/[aA]verage/d' $1 > temp.txt
             colnum=`awk -v RS='\t' '/%sys/{print NR; exit}' temp.txt`
             sed -n '/all/p' temp.txt | sort -k ${colnum} -r | head -n 10 | cut -d 'a' -f 1
        fi
}

if [ $# -eq 0 ]; then
	echo "Please specify input file you want to investigate"
	usage;
elif [ $# -gt 1 ]; then
	echo "You have to specify just one parameter" 
	usage;
else
	main_proc $@;
fi

while getopts :h options
do
	case $options in
		h) usage;;
		\?) exit;
	esac
done
