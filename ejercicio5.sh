#!/bin/bash
#ejercicio 01-sep-2022
#SCRIPT 1
read -p "ingrese un usario: " usu

while true
do
	clear
	echo "\t----Bienvenido---"
	echo "Usuario: $usu"
	echo "$(date)"
	echo "1. Solicitar un directorio y mostrar los archivos regulares del mismo"
	echo "2. Solicitar un archivo y mostrar el propietario del mismo"
	echo "3. Solicitar un directorio y mostrar cant de archivos especiales de BLOQUE y de CARACTER"
	echo "4. Solicitar un archivo y una ruta, y mueva el archivo a la ruta ingresada"
	echo "5. SALIR"
	read -p "Ingrese una opcion: " op
	case $op in
		 1)
		 echo "Ingrese un directorio: "
		 read dir1

		 if test -d $dir1
		 then
		     for i in $(ls $dir1)
		     do
			if test -f $i
			then
			echo "Es un archivo regular"
			fi
		     done
		 fi

		 read -p "...Presione ENTER para continuar..." aux1
		 ;;
		 2)
		 echo "\t---Lista de archivos---"
		 ls -l
		 echo "Ingrese un archivo: "
		 read archivo
		 propietario=$(ls -l $archivo|cut -d " " -f3)
 		 echo "El propietario de $archivo, es $propietario"

		 read -p "...Presione ENTER para continuar..." aux2
		 ;;
		 3)

		 cont_blq=0
		 cont_car=0
		 read -p "Ingrese un directorio:  " dir2
		 #for i in $(ls $dir2)
		 #do
		 #   if test -b $i
		 #   then
		 #   	$cont_bloq=`expr $cont_bloq + 1`
		 #   elif test -c $i
		 #   then
		 #	$cont_car=`expr $cont_car + 1`
		 #   fi
		 #done

		 if test -b $dir2
		 then
		        for i in $(ls $dir2)
			do
				$cont_blq=`expr $cont_blq + 1`
			done
		 elif test -c $dir2
		 then
			for i in $(ls $dir2)
			do
				$cont_car=`expr $cont_car + 1`
			done
		 fi
		 echo "Cantidad de archivos especiales de bloque: $cont_blq"
		 echo "Cantidad de archivos especiales de CARACTER: $cont_car"
		 read -p "...Presione ENTER para continuar..." aux3
		 ;;
		 4)
		 read -p "Ingrese un archivo: " arch
		 read -p "Ingrese una ruta: " ruta

		 mv $arch $ruta
		 echo "Archivo movido con EXITO!..."

		 read -p "...Presione ENTER para continuar..." aux4
		 ;;
		 5)
			break
		 ;;
	esac

done
