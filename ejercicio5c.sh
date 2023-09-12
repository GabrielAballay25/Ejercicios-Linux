#!/bin/bash
#EJERCICIO 01-SEP-2022
#Scrip 03

while true
do
	clear
	echo "\t---BIENVENIDO---"
	echo "\tcantidad de parametros poscionales: $# "

	echo "1. Realizar suma del 1er Parametro y 2do Parametro (si el usuario los ingresó) "
	echo "2. Realizar la multiplicacion del 2do y el 3er Parametro (si el usuario los ingresó) "
	echo "3. Que haga una suma de dos en dos desde el 1 al 99"
	echo "4. SALIR"

	read -p "Ingrese una opcion: " op
	case $op in
		 1)
		 if test $# -ge 2
		 then
			echo "Primer numero: $1"
			echo "Segundo numero: $2"
			sum=`expr $1 + $2`
			echo "Resultado: $sum"
		 else
			echo "Cantidad INSUFICENTE de parametros..."
		 fi

		 read -p "...Presiona ENTER para continuar..." aux1
		 ;;
		 2)
		 if test $# -ge 2
		 then
		 	echo "2do Parametro: $2"
			echo "3do Parametro: $3"
			mul=`expr $2 \* $3`
			echo "resultado $mul"
		 else
			echo "No hay cantidad suficiente de parametros.."
		 fi

		 read -p "...Presiona ENTER para continuar..." aux2
		 ;;
		 3)
		 $acum=1
		 while test $acum -lt 6
		 do
			$acum=`expr $acum + 2`
		 done

		 read -p "...Presiona ENTER para continuar..." aux3
		 ;;
		 4)
		   break
		 ;;
	esac

done
