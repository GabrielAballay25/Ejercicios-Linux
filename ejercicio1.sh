
#!/bin/bash
#Ejercicio 2k3 02/ago/22
contra=1234
#programa
while true
do
	clear
	echo "\t-------- menu de opciones --------"
	echo "\t1. Comun sin parametros"
	echo "\t2. Administrador"
	echo "\t3. SALIR"
	echo "Ingrese una opcion: "
	read op
	case $op in
	    1)
	    	echo "\t| 1. Monitoreo de procesos |"
		echo "\t| 2. Ver contenido de un archivo|"
		echo "Ingrese una opcion: "
		read op2
		if [ $op2 -eq 1 ]
		then
			echo "----Monitoreo de procesos----"
	    		ps

		elif [ $op2 -eq 2 ]
		then
			echo "---- Muestra de archivos ----"
			echo "Ingrese un archivo:"
	    		read archivo
	    		cat $archivo
		fi
		echo "\npresiona ENTER para continuar..."
		read aux3

		;;


	    2)

		echo "\t----- ADMINISTRADOR -----"
		echo "Ingrese contraseña:"
		read contraingresada
		if [ $contraingresada -eq $contra ]
		then
			echo "1. modificar contraseña"
			echo "2. Mostrar historial "
			read op3
			if [ $op3 -eq 1 ]
			then
				echo "Ingrese su nueva contraseña: "
				read nueva_contra
				contra=$nueva_contra

			elif [ $op3 -eq 2 ]
			then
				echo "\t| HISTORIAL |"

			fi
		else
		    echo "\n\t...Contraseña Incorrecta..."
		fi
		echo "\npresiona ENTER para continuar..."
		read aux4
		;;
	    3)
		break
		;;
	esac
done

