#!/bin/bash

RUTA="$HOME/repogit/UTNFRA_SO_1P2C_2024_Coch/RTA_SCRIPT_Examen_20241005"

FILTRO_AVANZADO="$RUTA/Filtro_Avanzado.txt"

mkdir -p "$RUTA"

echo "IP Pública:" $(curl -s ifconfig.me) > "$FILTRO_AVANZADO"
echo "URL del repositorio remoto:" $(git remote get-url origin) >> "$FILTRO_AVANZADO"

