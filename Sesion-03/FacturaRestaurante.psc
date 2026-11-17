Algoritmo FacturaRestaurante
	subtotal <- 0
	
	Repetir
		Escribir "MENU DEL DIA:"
		Escribir "1. Bandeja Paisa ($25000)"
		Escribir "2. Ajiaco Santafereño ($20000)"
		Escribir "3. Cazuela de Mariscos ($32000)"
		Escribir "4. Jugo Natural ($5000)"
		Escribir "0. Finalizar pedido y generar factura"
		Escribir "Seleccione una opcion:"
		Leer opcion
		
		Si opcion >= 1 Y opcion <= 4 Entonces
			Escribir "Ingrese la cantidad:"
			Leer cantidad
			
			Segun opcion Hacer
				1: precioUnitario <- 25000
				2: precioUnitario <- 20000
				3: precioUnitario <- 32000
				4: precioUnitario <- 5000
			FinSegun
			
			subtotal <- subtotal + (precioUnitario * cantidad)
			Escribir "Producto agregado. Subtotal actual: $", subtotal
		SiNo
			Si opcion <> 0 Entonces
				Escribir "Opcion no valida."
			FinSi
		FinSi
	Hasta Que opcion = 0
	
	Si subtotal > 0 Entonces
		impuesto <- subtotal * 0.08
		
		Escribir "Desea incluir el servicio voluntario / propina del 10%? (S/N):"
		Leer deseaPropina
		
		Si Mayusculas(deseaPropina) = "S" Entonces
			propina <- subtotal * 0.10
		SiNo
			propina <- 0
		FinSi
		
		totalFinal <- subtotal + impuesto + propina
		
		Escribir "Subtotal:      $", subtotal
		Escribir "Impuesto (8%): $", impuesto
		Escribir "Propina (10%): $", propina
		Escribir "TOTAL A PAGAR: $", totalFinal
	SiNo
		Escribir "No se registraron productos en la orden."
	FinSi
FinAlgoritmo
