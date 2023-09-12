#!/bin/bash

#EJERCICIO 01-SEP-2022
#Scrip2

while true
do
	clear
	echo "Bienvenido"
	echo "Cantidad de usuarios conectados: $(who | wc -l)"
	echo "1. Solicitar una palabra y muestre la cantidad de caracteres"
	echo "2. Solicitar una palabra y la guarde en un archivo con nombre solicitado"
	echo "3. Solicitar dos palabras y las compare"
	echo "4. SALIR"
	read -p "Ingrese una opcion: " op
	case $op in
		1)
		echo "Ingrese una palabra: "
		read palabra
		valor=$(echo $palabra | wc -c)
		correcto=`expr $valor - 1`
		echo "$correcto"

		read -p "...Presiona ENTER para continuar..." aux1
		;;
		2)
		echo "Ingrese una palabra: "
		read palabra1
		echo "Ingrese nombre del archivo: "
		read nom

		if test -e $nom
		then
		    echo $palabra1 >> $nom
		else
		    touch $nom | $palabra1 >> $nom
		fi

		read -p "...Presiona ENTER para continuar..." aux2
		;;
		3)

		echo "Ingrese una palabra: "
		read pal1
		echo "Ingrese otra palabra: "
		read pal2

		if test  $pal1 = $pal2
		then
			echo "Ambas son palabras iguales"
		else
			echo "Son distintas"
		fi

		read -p "...Presiona ENTER para continuar..." aux3
		;;
		4)
			break
		;;
	esac

done
