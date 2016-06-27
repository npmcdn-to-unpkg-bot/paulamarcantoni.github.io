#!/bin/bash

if [[ $# -ne 4 ]]; then
  echo "Uso: directorio_origen directorio_destino LargoxAlto (ej: 300x190) NombreDestino."
  exit 1
fi

origen=$1
destino=$2
tam=$3
nombre=$4

for (( i = 1; i < 23; i++ )); do
  $(convert "${origen}/${4}${i}.jpg" -resize $3 "${destino}/${i}_${3}${4}.jpg")
done

exit 0
