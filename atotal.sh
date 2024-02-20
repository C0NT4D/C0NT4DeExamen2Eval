#!/bin/bash

totalConsumo=0

totalConsumo=$((totalConsumo + cantidadConsumo))

while read linea; do
ciudades=$(echo $linea|awk '{print $1})')
cantidadConsumo=$(echo "$linea" | awk '{print $4}')
 echo "introduce una ciudad"
 read  ciudad 
 if [ "$ciudad" = "$ciudades" ]; then

totalConsumoCiudad=$(($totalConsumo+$cantidadConsumo));
fi
done < consumos.txt
echo "El total de consumo en $ciudad es: $totalConsumoCiudad ."


