#!/bin/bash

users=$(cat /etc/passwd | grep -i /bin/bash)

echo "Los usuarios con bin/bash como consula son:"
echo "$users"
