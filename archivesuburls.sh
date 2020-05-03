#!/bin/bash

if [ $2 == "time" ]
then

mkdir $1; cd $1; 
curl "http://web.archive.org/cdx/search/cdx?url=*.$1/*&output=text&fl=original&collapse=urlkey" --max-time $3 >> "wayback-urls-$3.out" # Get urls from archieve.org 
grep -Po '.*?//\K.*?(?=/)' "wayback-urls-$3.out" | sort -u >> "wayback-subdomains-$3.out"

else 

mkdir $1; cd $1; 
curl "http://web.archive.org/cdx/search/cdx?url=*.$1/*&output=text&fl=original&collapse=urlkey" >> wayback-urls.out # Get urls from archieve.org 
grep -Po '.*?//\K.*?(?=/)' wayback-urls.out | sort -u >> wayback-subdomains.out  # Extract only sub/domains


fi
