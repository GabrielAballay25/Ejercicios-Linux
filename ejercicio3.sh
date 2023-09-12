#!/bin/bash

#Ejercicio 25-08

while true
do
	clear
	echo "\t----BIENVENIDO-----"
	echo "1. Informe de la cantidad de RAM"
	echo "2. Informe de MEMORIA VIRTUAL - SWAP"
	echo "3. SALIR"
	echo "ingrese una opcion:"
	read op
	case $op in
		1)
		free | head -2

		echo "\n...presiona ENTER para continuar..."
		read aux
		;;
		2)
		echo "\tIngrese cantidad de reportes"
		read cant_report
		echo "\tIngrese los intervalos de tiempo: "
		read time_intervalo
		vmstat $time_intervalo $cant_report

		echo "\n...presiona ENTER para continuar..."
		read aux2
		;;
		3)
			break
		;;
	esac
done
