#!/bin/bash
cd `dirname $0`
export IFS=$'\n'

DATE=`date +%Y_%m_%d`
argv=("$@")
CMDNAME=`basename $0`

echo `readlink -f .`

if [ $# -eq 0 ]; then
	echo "Usage : ${CMDNAME} [url]"
	exit 1
fi

phantomjs phantomjs-get-html.js $1

