#!/bin/bash

# Recibir url de un sitio web en terminal linux y decir si reponde 200 o no.

# ingrese url
read -p "Introduce la url: " url


if curl -I "$url" 2>&1 | grep -w "200\|301" ; then
    echo "$url está activo"
else
    echo "$url está caído"
fi

