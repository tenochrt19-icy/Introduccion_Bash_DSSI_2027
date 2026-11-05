#!/bin/bash
#Asignamos la cadena backup a la variable app
app="backup"

#Asignamos el valor 2 a la variable version
version=2

#Nuesta variable usuario_actual contiene la salida del comando whoami
usuario_actual=$(whoami)

#Mandamos a llamar a los valores de las variables app y version en la posicion correspondiente en medio del texto
echo "Procesando ${app}_v${version}.tar.gz"

#Aqui se llama correctamente al valor de la variable HOME porque usamos las comillas dobles
echo "Ruta: ${HOME}"

#Aqui no se muestra el valor de la variable HOME porque las comillas simples lo interpretan como texto literal
echo 'Ruta: ${HOME}'
#Escribimos cierto texto en pantalla y mostramos el contenido de la variable usuario_actual
echo "Mi usuario es ${usuario_actual}"
