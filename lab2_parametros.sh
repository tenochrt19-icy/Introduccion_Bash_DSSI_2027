#!/bin/bash

#Pintamos el script que estamos ejecutando con $0
echo "scripten ejecucion: $0"

#Pintamos el numero de parametros que recibe el script con $#
echo "Numero de parametros recibidos: $#"

#Pintamos cada parametro en el orden en que se colocan
echo "Lista de parámetros: $@"

# Validar que recibimos al menos 2 parámetros
if [ $# -lt 2 ]; then
    echo "Uso: $0 <origen> <destino>"
    exit 1
fi

# Archivo inexistente, con la salida de error redirigida a error.log
ls archivo_inexistente.txt 2> error.log

# Código de salida del comando anterior
echo "Código de salida: $?"
