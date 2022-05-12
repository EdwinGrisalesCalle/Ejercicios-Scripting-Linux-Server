#!/bin/bash
trap ctrl_c INT
function ctrl_c(){
exit 0
}

# Recibir la url de un sitio web y decir si ese sitio esta bien o tiene
# algun tipo de problema.

if [[ $#>0  ]]
then
status=$(curl -s -o /dev/null -w "%{http_code}" $1)

	if [[ $status == 200 ]]	
	then
		echo "La pagina funciona correctamente [[status $status]]"
	else
		echo "La pagina presenta problemas [[status $status]]"		
	fi

else
echo "Debe ingresar una url como parametro para ejecutar este script"
exit 1

fi

