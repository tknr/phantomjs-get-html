#!/bin/bash -x

~/src/git/phantomjs-get-html/cs.sh | grep 80 > proxy.txt
~/src/git/phantomjs-get-html/cs.sh | grep 443 | sed -e "s/http/https/g" >> proxy.txt