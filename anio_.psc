Algoritmo Comprobaranio
	Definir anio Como Entero
	Escribir "digite el anio"
	leer anio
	
	si (anio MOD 4 = 0 y anio mod 100 <> 0) o anio MOD 400 = 0 Entonces
		Escribir anio, " es bisiesto"
	SiNo
		Escribir anio, " no es bisiesto"
	FinSi
	
FinAlgoritmo
