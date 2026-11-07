#!/bin/bash

# Validar que recibimos al menos 2 parámetros
if [ $# -ne 1 ]; then
    echo "Uso: $0 <ruta/de/archivo/o/directorio>"
    exit 1
fi

#Verificar que el archivo exista
if [ -e $1 ]; then
	echo "Tu archivo si existe:)"
	
#Verificar el tipo de archivo
	#Verificar si es un directorio
	if [ -d "$1" ]; then
		echo "Tu archivo es un directorio"
	
	#Verificar permisos
		#Permiso de lectura
		if [ -r $1 ]; then
			echo "Tienes permisos de lectura"
		else
			echo "No tienes permiso de lectura"
		fi
		
		#Permiso de escritura
		if [ -w $1 ]; then
			echo "Tienes permiso de escritura"
		else
			echo "No tienes permiso de escritura"
		fi
	#Verificar si es un archivo regular
	elif [ -f $1 ]; then
		echo "Tu archivo es un archivo regular"
	
	#Verificar permisos
		#Permiso de lectura
		if [ -r $1 ]; then
			echo "Tienes permisos de lectura"
		else
			echo "No tienes permiso de lectura"
		fi
		#Permiso de escritura
		if [ -w $1 ]; then
			echo "Tienes permiso de escritura"
		else
			echo "No tienes permiso de escritura"
		fi
	#Caso default
	else
		echo "Tu archivo no es un directorio ni un archivo regular"
		exit 1
	fi

else
	echo "El archivo no existe:("
	exit 1
fi

