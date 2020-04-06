#!/bin/bash -x
cd `dirname $0`
~/src/git/phantomjs-get-html/cybersyndrome.sh | grep ":80" > proxy.txt
~/src/git/phantomjs-get-html/cybersyndrome.sh | grep ":3128" >> proxy.txt
~/src/git/phantomjs-get-html/cybersyndrome.sh | grep ":443" | sed -e "s/http/https/g" >> proxy.txt
