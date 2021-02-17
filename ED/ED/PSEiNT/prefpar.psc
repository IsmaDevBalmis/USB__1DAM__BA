Funcion TriplicarPorReferencia(num Por Referencia)
	
	num = num * 3
	
FinFuncion

Funcion TriplicarSinReferencia(num)
	num = num * 3
FinFuncion


Algoritmo PasoParametrosPorReferencia
	
	num = 2
	Escribir "Voy a triplicar el 2"
	TriplicarSinReferencia(num)
	Escribir "Num vale ", num
	TriplicarPorReferencia(num)
	Escribir "Num vale ", num
	
FinAlgoritmo
