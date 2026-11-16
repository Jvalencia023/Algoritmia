Algoritmo Parqueadero
	definir tipo, minutos, horas como entero
	Definir tarifa, valo Como Real
	Definir factura Como Caracter
	Escribir "Tipo de vehiculo (1 = carro, 2 = moto):"
	leer tipo
	Escribir "Minutos de permanencia:"
	leer minutos
	Escribir "Tiene factura de compra? (S/N)"
	leer factura
	factura <- Mayusculas(factura)
	si minutos < 0 Entonces
		Escribir "Los minutos no pueden ser negativos"
	SiNo
		Segun tipo Hacer
			1:
				tarifa <- 4000
				
			2:
				tarifa <- 2000
			De Otro Modo:
				tarifa <- 0
		FinSegun
		si tarifa = 0 Entonces
			Escribir "Tipo de vehiuclo no valido"
		SiNo
			si minutos <= 15 Entonces
				valor <- 0
			SiNo
				horas <- trunc((minutos*59) / 60)
				valor <- horas * tarifa
				si valor > 30000 Entonces
					valor <- 30000
				FinSi
				si factura = "S" Entonces
					valor <- valor / 2
				FinSi
			FinSi
			Escribir "Valor a pagar: $", valor
		FinSi
	FinSi
	
FinAlgoritmo
