Algoritmo Calificaciones
	Escribir "Cuantas notas desea ingresar?"
	Leer n
	
	Si n > 0 Entonces
		suma <- 0
		Para i <- 1 Hasta n Con Paso 1 Hacer
			Repetir
				Escribir "Ingrese la nota ", i, " (0.0 a 5.0):"
				Leer nota
				Si nota < 0 O nota > 5 Entonces
					Escribir "Error: La nota debe estar entre 0.0 y 5.0."
				FinSi
			Hasta Que nota >= 0 Y nota <= 5
			
			suma <- suma + nota
			
			Si i = 1 Entonces
				notaMayor <- nota
				notaMenor <- nota
			SiNo
				Si nota > notaMayor Entonces
					notaMayor <- nota
				FinSi
				Si nota < notaMenor Entonces
					notaMenor <- nota
				FinSi
			FinSi
		FinPara
		
		promedio <- suma / n
		Escribir "Promedio final: ", promedio
		Escribir "Nota mas alta: ", notaMayor
		Escribir "Nota mas baja: ", notaMenor
		
		Si promedio >= 3.0 Entonces
			Escribir "Estado: APROBADO"
		SiNo
			Escribir "Estado: REPROBADO"
		FinSi
	SiNo
		Escribir "La cantidad de notas debe ser mayor a cero."
	FinSi

	
FinAlgoritmo
