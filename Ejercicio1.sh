#! /bin/bash
trap ctrl_c INT

function ctrl_c(){
exit 0
}


#Crear un Script que muestre cuales usuarios tienen un User id mayor a 1000

 getent passwd | awk -F: '{ if($3>1000) {print "UID > 1000: "  $3 }}'


#echo "User Id $UID"

