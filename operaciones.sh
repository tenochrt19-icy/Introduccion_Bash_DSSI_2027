#!/bin/bash

# Validar que recibimos al menos 2 parámetros
if [ $# -ne 2 ]; then
    echo "Uso: $0 <num1> <num2>"
    exit 1
fi

#Verificar que la primera entrada sea un numero entero
if [[ ! $1 =~ ^-?[0-9]+$ ]]; then
    echo "Solo se aceptan numeros enteros como entrada del script"
    exit 1
fi   

#Verificar que la segunda entrada sea un numero entero
if [[ ! $2 =~ ^-?[0-9]+$ ]]; then
    echo "Solo se aceptan numeros enteros como entrada del script"
    exit 1
fi   

# Asignar el valor de los parametros a una variable para operar con esos valores

num1=$1

num2=$2

# Hacer las operaciones usando las variables que definimos antes
# Guardar el resultado de cada operacion en una variable

suma=$((${num1}+${num2}))

resta=$((${num1}-${num2}))

mult=$((${num1}*${num2}))

#Imprimir resultados

echo "La suma es ${suma}"

echo "La diferencia es ${resta}"

echo "El producto es ${mult}"
