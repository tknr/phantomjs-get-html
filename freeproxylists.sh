#!/bin/bash
cd `dirname $0`
./phantomjs_get_html.sh "http://www.freeproxylists.net/ja/?pt=8080&pr=HTTP&s=rs" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sed -e "s|^|http://|g" | sed -e "s|$|:8080|g" | sort | uniq
./phantomjs_get_html.sh "http://www.freeproxylists.net/ja/?pt=8080&pr=HTTPS&s=rs" | grep -o -E '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sed -e "s|^|https://|g" | sed -e "s|$|:8080|g" | sort | uniq



