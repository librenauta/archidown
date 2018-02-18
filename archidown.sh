#!/bin/bash
i=5000
while [ $i -lt 50000 ]; do
    i=$[$i + 1];
    wget -O - http://archillect.com/$i | grep -E '<img id="ii" src=.*/>' | sed -e 's/<img id="ii" src=//' -e 's/\/>//' -e 's/^[[:space:]]*//' >> links.txt
done
