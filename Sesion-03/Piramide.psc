Algoritmo Piramide
	Escribir "Ingrese la altura de la piramide (numero de filas):"
	Leer altura
	
	Si altura > 0 Entonces
		Para fila <- 1 Hasta altura Con Paso 1 Hacer
			Para espacio <- 1 Hasta (altura - fila) Con Paso 1 Hacer
				Escribir Sin Saltar " "
			FinPara
			
			Para asterisco <- 1 Hasta (2 * fila - 1) Con Paso 1 Hacer
				Escribir Sin Saltar "*"
			FinPara
			
			Escribir ""
		FinPara
	SiNo
		Escribir "La altura debe ser un numero entero positivo."
	FinSi
FinAlgoritmo
