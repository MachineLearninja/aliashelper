#!/bin/bash
thisdir=$(dirname $0)
source $thisdir/aliashelper.settings

if [ ! $# -eq 0 ]; then
	$thisdir/print_aliases_cheatsheet.sh | grep -i $1 | $thisdir/colorlines.sh
else
	$thisdir/print_aliases_cheatsheet.sh | $thisdir/colorlines.sh
fi
