#!/bin/bash

SEARCH_PAGES='1'

if [ -f ./version_list ]; then
    rm version_list
fi

curl -s "https://github.com/ipfs/go-ipfs/releases" | grep "ipfs/go-ipfs/releases/tag" | grep -v '\-rc' | sed 's/.*tag\/\(.*\)\">/\1/' | sort -u >> version_list
sort -ru version_list -o version_list
