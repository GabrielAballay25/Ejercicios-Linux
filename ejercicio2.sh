#!/bin/bash

echo "Ingrese usuario: "
read usu
echo "Ingrese contraseña: "
read contra


while true
do
	clear
	echo "\t\t----BIEVENIDO----"
	echo "\t\tUsuario: $usu"

	echo "\t1. Mostrar cantidad de archivos en una ubicacion"
	echo "\t2. Cambiar permisos de un archivo"
	echo "\t3. Registrar operaciones en un archivo"
	echo "\t4. SALIR"
	echo "\nIngrese una opcion: "
	read op

	case $op in
		1)
		echo "ingrese ubicacion:"
		read ubi
		ls -l| wc -l $ubi

		echo "\n...presiona ENTER para continuar..."
		read aux2
		;;
		2)
		echo "Ingrese un archivo: "
		read archivo
		echo "Desea cambiar permiso al: \n\tu(usuario) \n\tg(grupo) \n\to(otro) \n\ta(todos)"
		read usu_arch
		echo "Desea quitar o agregar permiso? \n\t+ (agregar) \n\t- (quitar)"
		read permiso
		echo "Que permiso desea agregar o quitar? \nr (lectura) \nw (escritura) \nx (ejecucion) "
		read perm_rwx


		chmod $usu_arch$permiso$perm_rwx $archivo
		ls -l $archivo

		echo "\tCAMBIOS REALIZADOS CON EXITO!"
		echo "\n...presiona ENTER para continuar..."
		read aux3
		;;
		3)
		echo "chmod $usu_arch$permiso$perm_rwx $archivo     \t|$(whoami) $(date) $modo ">>archivo.txt
		echo "REGISTRO DE OPERACIONES REALIZADO CON EXITO!.."

		echo "\n...presiona ENTER para continuar..."
		read aux4
		;;
		4)
			break
		;;
	esac

done
