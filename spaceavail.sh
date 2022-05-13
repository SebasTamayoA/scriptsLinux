#!/bin/bash

# Percentage of hard disk usage

used=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

# 1 to 40% usage
if [ $used -ge 1 ] && [ $used -le 40 ]; then
    echo "The hard disk is ok, the percentage of use is: $used%"
# 41 to 80% usage
elif [ $used -ge 41 ] && [ $used -le 80 ]; then
    echo "Warning!, the hard disk is regular, the percentage of use is: $used%"
# 81 y 100% usage
elif [ $used -ge 81 ] && [ $used -le 100 ]; then
    echo "The hard disk is full, the usage percentage is: $used%"
fi
