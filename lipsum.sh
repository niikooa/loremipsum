#!/bin/bash

for i in {1..5}
do
  curl -L "https://lipsum.com/feed/json" | jq '.feed.entry.content.$t' | sed 's/<[^>]*>//g' | head -c 1000 > "lipsum_$i.txt"
done

