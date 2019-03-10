#!/bin/bash
export IFS=$'\n'

DATE=`date +%Y_%m_%d`
argv=("$@")
CMDNAME=`basename $0`

if [ $# -eq 0 ]; then
	echo "Usage : ${CMDNAME} [dirname]"
	exit 1
fi

phantomjs phantomjs-get-html.js $1

