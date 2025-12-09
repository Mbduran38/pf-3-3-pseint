SubProceso resultado <- Suma(nums)
	Definir n,i Como Entero;
	Definir num, resultado Como Real;
	Escribir "¿Cuantos numeros quieres sumar?";
	Leer n;
	resultado <- 0;
	Para i <- 1 Hasta n Hacer
		Escribir "Ingresa el número ", i, ":";
		Leer num;
		resultado <- resultado + num;
	FinPara
	Escribir "Resultado: ", resultado;
FinSubProceso

SubProceso resultado <- Resta(nums)
	Definir n,i Como Entero;
	Definir num, resultado Como Real;
	Repetir
		Escribir "¿Cuántos números quieres restar?";
		Leer n;
		Si n <= 1 Entonces
			Escribir "Ingresa mas de un numero";
		FinSi
	Hasta Que n > 1
	
	Escribir "Ingresa el número 1:";
	Leer resultado;
	
	Para i <- 2 Hasta n Hacer
		Escribir "Ingresa el número ", i, ":";
		Leer num;
		resultado <- resultado - num;
	FinPara
	Escribir "Resultado: ", resultado;
FinSubProceso

SubProceso resultado <- Multiplicacion(nums)
	Definir n,i Como Entero;
	Definir num, resultado Como Real;
	Repetir
		Escribir "¿Cuántos números quieres multiplicar?";
		Leer n;
		Si n <= 1 Entonces
			Escribir "Ingresa mas de un numero";
		FinSi
	Hasta Que n > 1
	
	Escribir "Ingresa el número 1:";
	Leer resultado;
	
	Para i <- 2 Hasta n Hacer
		Escribir "Ingresa el número ", i, ":";
		Leer num;
		resultado <- resultado * num;
	FinPara
	Escribir "Resultado: ", resultado;
FinSubProceso

SubProceso resultado <- Division(nums)
	Definir n,i Como Entero;
	Definir num, resultado Como Real;
	Repetir
		Escribir "¿Cuántos números quieres dividir?";
		Leer n;
		Si n <= 1 Entonces
			Escribir "Ingresa mas de un numero";
		FinSi
	Hasta Que n > 1
	
	Escribir "Ingresa el número 1:";
	Leer resultado;
	
	Para i <- 2 Hasta n Hacer
		Escribir "Ingresa el número ", i, ":";
		Leer num;
		Si num = 0 Entonces
			Escribir "ERROR: No se puede dividir entre cero.";
		Sino
			resultado <- resultado / num;
		FinSi
	FinPara
	Escribir "Resultado: ", resultado;
FinSubProceso
	
Algoritmo Calculadora
	Definir opc,n,nums, i Como Entero;
	Definir num, resultado Como Real;
	
	Repetir
		Escribir "********************";
		Escribir "       MENU         ";
		Escribir "********************";
		Escribir "1. Sumar";
        Escribir "2. Restar";
        Escribir "3. Multiplicar";
        Escribir "4. Dividir";
        Escribir "5. Salir";
		Escribir "";
		Escribir "Selecciona una opcion";
		Leer opc;
		
		Segun opc Hacer
			
            1:  
				resultado <- Suma(nums);
            2:  
                resultado <- Resta(nums);
            3:  
                resultado <- Multiplicacion(nums);
            4:  
                resultado <- Division(nums);
            5:
                Escribir "Saliendo...";
				
            De Otro Modo:
                Escribir "Opción inválida.";
        FinSegun
	Hasta Que opc = 5;
FinAlgoritmo
