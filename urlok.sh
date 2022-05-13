#!/bin/bash

# Receive url of a website in linux terminal and say if it responds 200 or not.

# Input url
read -p "Enter the url: " url


if curl -I "$url" 2>&1 | grep -w "200\|301" ; then
    echo "$url It's OK"
else
    echo "$url Website is down"
fi

