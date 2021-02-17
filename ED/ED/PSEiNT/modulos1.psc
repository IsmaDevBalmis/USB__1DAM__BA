//Definición del módulo
Funcion resultado <- Calcular ( operacion, num1, num2)
	
	Si operacion == "suma" Entonces
		resultado = num1 + num2
		
	SiNo
		resultado = num1 - num2
	FinSi
	
	
FinFuncion
Algoritmo SaludoConNombre
	
	suma = Calcular("suma",5,3)
	resta = Calcular("resta",5,2)
	Escribir "La suma vale ", suma
	Escribir "La resta vale ", resta
	
FinAlgoritmo
