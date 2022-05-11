#!/bin/bash
trap ctrl_c INT
function ctrl_c(){
exit 0
}

# Cuales son los usuarios que tienen bin bash como consola

awk -F':' '{ if($7=="/bin/bash" ){  print "Usuario: " $1 " Consola: "  $7}}' /etc/passwd
