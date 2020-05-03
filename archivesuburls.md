# archivesuburls
Simple bash tool to extract target subdomains + URLs from Wayback Machine. 



## Install

git clone https://github.com/osamahamad/archivesuburls

cd archivesuburls.sh target.com 

chmod +x archivesuburls.sh


     


## Usage


```
./archivesuburls.sh target.com 
```

Result > target.com folder created > 2 files inside the folder, one for urls --> wayback-urls.out , other for sub/domains --> wayback-subdomains.out
  

```
./archivesuburls.sh target.com time
```



Sometimes when providing huge companies domains, the way back machine will have a long time searching and i don't know really know but i think the search will take a very long time. cURL have beautiful option called --max-time which allow you to set how much time do you want to wait to stop extracting urls in this script.

So you can provide ```time``` as second argument and hit ENTER, set your time in seconds i.e: 600 so the script will execute only for 10 minutes and end the process by giving you 2 files for urls and subdomains extracted from these urls in these 10 minutes.



