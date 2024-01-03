#!/bin/sh -l

# List of popular websites
sites=("reddit.com" "tumblr.com" "baidu.com" "yandex.ru" "vk.com" 
       "ebay.com" "bing.com" "craigslist.org" "bbc.co.uk" "cnn.com")

# Loop through the list and use curl to ping each website
for site in "${sites[@]}"
do
  echo "Pinging $site..."
  if curl -s --head --request GET $site >/dev/null; then
    echo "Connection to $site was successful."
  else
    echo "Error: Connection to $site failed."
  fi
done
