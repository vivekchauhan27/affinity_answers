#!/bin/bash

# Download NAVAll.txt and extract Scheme Name + Asset Value
curl -s https://www.amfiindia.com/spages/NAVAll.txt \
  | awk -F ';' 'NR>1 && NF>=5 {print $4 "\t" $5}' \
  > nav_data.tsv

echo "Extracted Scheme Name and Asset Value saved in nav_data.tsv"
