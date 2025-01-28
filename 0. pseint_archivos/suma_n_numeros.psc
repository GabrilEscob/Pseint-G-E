// Autor: Gabriela 	Escobar
Algoritmo suma_n_numeros
	Escribir "Ingrese un nùmero ( 0 = Salir)";
	Leer numero;
	total<-0;
	Mientras numero<>0 Hacer
		total<-total+numero;
		Escribir "Ingrese otro nùmero (0 = Salir)";
		Leer numero;
	Fin Mientras
	Escribir "El total acumulado es: ", total;
	
FinAlgoritmo
