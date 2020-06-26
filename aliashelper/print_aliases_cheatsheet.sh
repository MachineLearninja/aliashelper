#!/bin/bash
#By MachineLearninja

thisdir=$(dirname $0)
source $thisdir/aliashelper.settings
#Directory of aliases
#aliasesfile="$HOME/.aliases.sh"


#{{{ Calculate the longest command for the formating
	# cut the alias entries to get only the alias name
	commandnames=$( cat $aliasesfile | cut -d= -f1 | cut -d ' ' -f2 )
	length=""

	for c in $commandnames; do
		length+=$( echo "$c" | wc -c )
		length+="\n"
	done
	longestCommand=$( echo -e "$length" | sort -nr | head -n1 )
#}}}

#{{{ Read file and print the aliases formatted
	while read -r line; do

		firstword=$(echo $line | cut -d' ' -f1)

		#first check if command is an alias command
		if [ "$firstword" == "alias" ];then
			commandname=$(echo "$line" | cut -d= -f1 | cut -d' ' -f2)

			#the explaination is the comment behind the alias entry
			explaination=$(echo "$line"| cut -d'#' -f2)

			printf "%b%-${longestCommand}s%b %10s\n" "\e[1m" "$commandname" "\e[22m" "$explaination"
		fi
	done < $aliasesfile
#}}}
