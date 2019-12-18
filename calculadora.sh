#!/bin/bash 
getNumbers(){
	read -p "Introduce el primer número: " num1
	read -p "Introduce el segundo número: " num2
	if ((num1<num2));
	then
	    	aux=$num1
		num1=$num2
		num2=$aux
	fi
}
menu(){
	echo "1) Sumar"
	echo "2) Restar"
	echo "3) Multiplicar"
	echo "4) Dividir"
	echo "0) Salir"

	read -p "Elige la operación" option

}




while true; do
	menu
	case $option in
		1)
			getNumbers
			echo $num1 + $num2 '=' $((num1+num2))
		;;
		2)
			getNumbers
			echo $num1 - $num2 '=' $((num1-num2))
		;;
		3)
			getNumbers
			echo $num1 * $num2 '=' $((num1*num2))

		;;
		4)
			getNumbers
			echo $num1 / $num2 '=' $((num1/num2))

		;;
		0) exit ;;
	esac
done
