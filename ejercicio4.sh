#!/bin/bash
#scrip del dia 25_agosto_2022
#1- ingresar una palabra que devuelva la cantidad de caracteres
#2- ingresar una ruta de un archivo y un nombre, y copiarlo cn el nombre ingresado

while true
do
	clear
	echo "\n----BIENVENIDO----"
	echo "1. Cantidad de caracteres"
	echo "2. Copiar archivo"
	echo "3. SALIR"
	echo "Ingrese una opcion: "
	read op
	case $op in
		1)
		echo "Ingrese una palabra: "
		read palabra
		mostrar=$(echo $palabra| wc -c)
		caracter=`expr $mostrar - 1`
		echo "$caracter"

		echo "\n...presionar ENTER para continuar..."
		read aux1
		;;
		2)
		read -p "Ingrese ruta del archivo destino: " ruta
		read -p "Ingrese archivo: "archivo
		read -p "Nuevo nombre del archivo: " nom_arch
		nuevo_arch= mv $archivo $nom_arch
		cp $nuevo_arch $ruta

		echo "\n...presionar ENTER para continuar..."
		read aux2
		;;
		3)
			break
		;;
	esac
done
