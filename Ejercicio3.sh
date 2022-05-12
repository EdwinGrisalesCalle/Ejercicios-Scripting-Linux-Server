# Calcular cual es el tamaño del disco duro.
# Si el uso del disco duro esta entre el 1% y el 40% --> Todo esta bien.
# Si esta entre 41% y 80% --> Advertencia Regular.
# Si es mayor al 80% --> Necesita un nuevo disco duro.
#!/bin/bash
trap ctrl_c INT
function ctrl_c(){
exit 0
}
porcentaje=$(df . | grep / | awk '{ print $5}' | awk -F% '{print $1}' )

if [[ $porcentaje -gt 1 &&  $porcentaje -lt 40 ]] 
then 
	echo "Usado "$porcentaje"%, todo esta bien"  
elif [[ $porcentaje -gt 40 &&  $porcentaje -lt 80 ]]
then
	echo "Usado "$porcentaje"%, advertencia regular"  
else 
	echo "Usado "$porcentaje"%, necesita un nuevo disco duro"
fi
