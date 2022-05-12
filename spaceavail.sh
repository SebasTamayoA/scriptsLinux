#!/bin/bash

# Porcentaje de uso de disco duro

used=$(df / | grep / | awk '{print $5}' | sed 's/%//g')

# si esta en el rango 1 y 40% de uso
if [ $used -ge 1 ] && [ $used -le 40 ]; then
    echo "El disco duro esta ok, el porcentaje de uso es: $used%"
# si esta en el rango 41 y 80% de uso
elif [ $used -ge 41 ] && [ $used -le 80 ]; then
    echo "Advertencia!, el disco duro esta regular, el porcentaje de uso es: $used%"
# si esta en el rango 81 y 100% de uso
elif [ $used -ge 81 ] && [ $used -le 100 ]; then
    echo "El disco duro esta lleno, el porcentaje de uso es: $used%"
fi
