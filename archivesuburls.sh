#!/bin/bash

if [ $2 == "time" ]
then


echo -n "Enter max time to wait in secconds and press [ENTER]: "
read usrinput
mkdir $1; cd $1; 
curl "http://web.archive.org/cdx/search/cdx?url=*.$1/*&output=text&fl=original&collapse=urlkey" --max-time $usrinput >> "wayback-urls-$usrinput.out" # Get urls from archieve.org 
grep -Po '.*?//\K.*?(?=/)' "wayback-urls-$usrinput.out" | sort -u >> "wayback-subdomains-$usrinput.out"

else 

mkdir $1; cd $1; 
curl "http://web.archive.org/cdx/search/cdx?url=*.$1/*&output=text&fl=original&collapse=urlkey" >> wayback-urls.out # Get urls from archieve.org 
grep -Po '.*?//\K.*?(?=/)' wayback-urls.out | sort -u >> wayback-subdomains.out  # Extract only sub/domains


fi
