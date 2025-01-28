// Autor: Gabriela Escobar
//Funcion que permite desplegar el menu de la calculadora, no recibi argumentos, ni devuelve datos
Funcion Imprimir_Menu
	Limpiar Pantalla;
	Escribir 'Que desea realizar?';
	Escribir '1. Sumar';
	Escribir '2. Restar';
	Escribir '3. Multiplicar';
	Escribir '4. Dividir';
	Escribir '0. Terminar';	
Fin Funcion
//Funciones que permiten calculos como sumar, restar y multiplicar.  Reciben argumentos y devuelven datos
Funcion resultado <- sumar ( primero, segundo )
	resultado <- primero+segundo;
Fin Funcion
Funcion resultado <- restar ( primero, segundo )
	resultado <- primero-segundo;
Fin Funcion
Funcion resultado <- multiplicar ( primero, segundo )
	resultado <- primero*segundo;
Fin Funcion
//Funcion que permite dividir, recibiendo argumentos pero no devuelve datos
Funcion dividir ( primero, segundo )
	Si segundo==0 Entonces
		Repetir
			Escribir 'ingrese un segundo valor nuevamente (no puede ingresar 0): ';
			Leer segundo;
		Hasta Que segundo<>0
	Fin Si
	resultado <- primero/segundo;
	Escribir 'El resultado de la division es: ', resultado;
Fin Funcion


Algoritmo calculadora_funciones	
	Repetir
		Imprimir_Menu;
		Leer opcion;
		Si (opcion==1 O opcion==2 O opcion==3 O opcion==4) Entonces
			Escribir 'ingrese un primer valor: ';
			Leer primero;
			Escribir 'ingrese un segundo valor: ';
			Leer segundo;
		Fin Si
		Segun opcion Hacer
			1:
				Escribir 'El resultado de la suma es: ', sumar(primero, segundo);
				Esperar Tecla;
			2:
				Escribir 'El resultado de la resta es: ', restar(primero, segundo);
				Esperar Tecla;
			3:
				Escribir 'El resultado de la multiplicacion es: ', multiplicar(primero, segundo);
				Esperar Tecla;
			4:
				dividir(primero, segundo);
				Esperar Tecla;
			0:
				Escribir 'Hasta pronto';
			De Otro Modo:
				Escribir 'La opcion elegida es invalida';
				Esperar Tecla;
		Fin Segun		
		
	Hasta Que opcion==0
		
FinAlgoritmo
