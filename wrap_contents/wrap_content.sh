#!/bin/sh

content_file=$1
headNfoot_name=$2
file_name=$3

Name="Fish"

help(){
	# Display Help
	echo "Add description of the script functions here"
	echo
	echo "Syntax: scriptTemplate: [-g|h|v|V]"
	echo "Options:"
	echo "g     Print the GPL liscense notification"
	echo "h     Print this help"
	echo "v     Verbose mode"
	echo "V     Print software version and exit"
	echo
}

while getopts ":hn:" option; do
	case $option in
		h) #Display help
			help
			exit;;
		n)
			Name=$OPTARG;;
		\?) # Invalid option
			echo "Error: Invalid option '$content_file'"
			exit;;

	esac
done

echo "A salmon named: $Name"
