Algoritmo CajeroParqueadero
	Escribir "Ingrese la placa del vehiculo:"
	Leer placa
	
	Escribir "Seleccione el tipo de vehiculo:"
	Escribir "1. Carro ($3000 / hora)"
	Escribir "2. Moto ($1500 / hora)"
	Escribir "3. Bicicleta ($500 / hora)"
	Leer tipoVehiculo
	
	Escribir "Ingrese la cantidad de horas de permanencia:"
	Leer horas
	
	Segun tipoVehiculo Hacer
		1:
			tarifaHora <- 3000
		2:
			tarifaHora <- 1500
		3:
			tarifaHora <- 500
		De Otro Modo:
			Escribir "Tipo de vehiculo no valido."
			tarifaHora <- 0
	FinSegun
	
	Si tarifaHora > 0 Y horas > 0 Entonces
		totalPagar <- tarifaHora * horas
		Escribir "Total a pagar por el vehiculo ", placa, ": $", totalPagar
		
		Repetir
			Escribir "Ingrese el dinero recibido:"
			Leer pago
			Si pago < totalPagar Entonces
				Escribir "Monto insuficiente. Faltan $", (totalPagar - pago)
			FinSi
		Hasta Que pago >= totalPagar
		
		devuelta <- pago - totalPagar
		Escribir "Pago exitoso. Su devuelta es: $", devuelta
	SiNo
		Escribir "No se pudo procesar el cobro. Verifique los datos."
	FinSi
	
	
FinAlgoritmo
	
