#!/bin/bash

mkdir -p ~/Estructura_Asimetrica/{correo,clientes}

for i in {1..100}; do
    mkdir -p ~/Estructura_Asimetrica/{correo,clientes}/cartas_$i
done

for i in {1..10}; do
    mkdir -p ~/Estructura_Asimetrica/correo/carteros_$i
done
