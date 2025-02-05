Algoritmo Calculadora_Basica
	Definir num1, num2, resultado Como Real
	Definir operacion Como Cadena
	Escribir 'Bienvenido a la calculadora básica'
	Escribir 'Ingrese el primer número: '
	Leer num1
	Escribir 'Ingrese el segundo número: '
	Leer num2
	Escribir 'Seleccione la operación (+, -, *, /): '
	Leer operacion
	Según operacion Hacer
		'+':
			resultado <- num1+num2
		'-':
			resultado <- num1-num2
		'*':
			resultado <- num1*num2
		'/':
			Si num2<>0 Entonces
				resultado <- num1/num2
			SiNo
				Escribir 'Error: No se puede dividir entre cero'
			FinSi
		De Otro Modo:
			Escribir 'Operación no válida'
	FinSegún
	Escribir 'El resultado es: ', resultado
FinAlgoritmo
