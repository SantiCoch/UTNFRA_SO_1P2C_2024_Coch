#!/bin/bash

RUTA="$HOME/repogit/UTNFRA_SO_1P2C_2024_Coch/RTA_SCRIPT_Examen_20241005"


mkdir -p "$RUTA"

echo "Total RAM:" $(grep MemTotal /proc/meminfo | awk '{print $2, $3}') > "$RUTA/Filtro_Basico.txt"

echo "Fabricante del chassis:" $(sudo dmidecode -t chassis | grep Manufacturer) >> "$RUTA/Filtro_Basico.txt"

