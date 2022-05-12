#!/bin/bash

# users with id

ids=$(awk -F: '{print $3}' /etc/passwd)

# if id diferent of zero
echo "Usuarios con id:"
for id in $ids; do
    if [ $id -ne 0 ]; then
        # show user
        user=$(getent passwd $id | cut -d: -f1)
        echo $user
    fi
done

