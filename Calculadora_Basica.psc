Algoritmo Calculadora_Basica
	Definir num1, num2, resultado Como Real
	Definir operacion Como Cadena
	Escribir 'Bienvenido a la calculadora b�sica'
	Escribir 'Ingrese el primer n�mero: '
	Leer num1
	Escribir 'Ingrese el segundo n�mero: '
	Leer num2
	Escribir 'Seleccione la operaci�n (+, -, *, /): '
	Leer operacion
	Seg�n operacion Hacer
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
			Escribir 'Operaci�n no v�lida'
	FinSeg�n
	Escribir 'El resultado es: ', resultado
FinAlgoritmo
