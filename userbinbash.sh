#!/bin/bash

users=$(cat /etc/passwd | grep -i /bin/bash)

echo "Users with bin/bash shell:"
echo "$users"
