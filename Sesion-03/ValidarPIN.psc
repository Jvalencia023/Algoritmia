Algoritmo ValidarPIN
	pinCorrecto <- 1234
	intentos <- 0
	maxIntentos <- 3
	accesoConcedido <- Falso
	
	Mientras intentos < maxIntentos Y accesoConcedido = Falso Hacer
		Escribir "Ingrese su PIN de 4 digitos (Intento ", intentos + 1, " de ", maxIntentos, "):"
		Leer pinIngresado
		intentos <- intentos + 1
		
		Si pinIngresado = pinCorrecto Entonces
			accesoConcedido <- Verdadero
			Escribir "PIN correcto. Bienvenido al sistema."
		SiNo
			Si intentos < maxIntentos Entonces
				Escribir "PIN incorrecto. Intente nuevamente."
			FinSi
		FinSi
	FinMientras
	
	Si accesoConcedido = Falso Entonces
		Escribir "Tarjeta bloqueada por exceder el limite de intentos."
	FinSi

FinAlgoritmo
