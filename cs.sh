#!/bin/bash
cd `dirname $0`
./phantomjs_get_html.sh "http://www.cybersyndrome.net/plr6.html" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:[0-9]{3,4}' | sed -e "s|^|http://|g"
./phantomjs_get_html.sh "http://www.cybersyndrome.net/pla6.html" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:[0-9]{3,4}' | sed -e "s|^|http://|g"
./phantomjs_get_html.sh "http://www.cybersyndrome.net/pld6.html" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\:[0-9]{3,4}' | sed -e "s|^|http://|g"



