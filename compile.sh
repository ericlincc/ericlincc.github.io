#!/bin/bash

set -e

# Generating index.html with jemdoc
python jemdoc.py index.jemdoc

# add google analytics script
insert_line=8
sed -e "${insert_line}r google-analytics.txt" index.html > temp.html
cp temp.html index.html
rm temp.html
