#!/bin/bash

# Validar que no recibimos parámetros
if [ $# -ne 0 ]; then
    echo "Uso: $0"
    exit 1
fi
#Guardar la ruta y nombre del directorio de respaldo
resp=~/respaldo_logs

#Guardar la salida del comando date
fecha=$(date +%F)

#Inicializar la variable del contador en 0
arProcesados=0

#Crear el directorio si no existe
[ -d "$resp" ] || mkdir -p "$resp"

#Buscar los archivos .log y copiar cada uno al respaldo
for f in *.log; do
	
	#Verificar si el archivo existe, sino saltar la instruccion
   	[ -f "$f" ] || continue

	#Copiar el archvio con el prefijo de la fecha
	#Aumentar contador por cada archivo copiado
  	cp "$f" "$resp/${fecha}_$f" && ((arProcesados++))
done

#Informar cuantos archivos se pudieron copiar
echo "Archivos procesados: $arProcesados"
