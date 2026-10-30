Algoritmo Semafoto
	Definir SemInv Como real
	
	Escribir "Numero de inventario"
	Leer SemInv
	
	Si SemInv < 0 Entonces
		Escribir "error"
	SiNo
		si SemInv = 0 Entonces
			Escribir "Rojo: agotado"
		SiNo
			
				si SemInv >= 1 y SemInv <= 10 Entonces
					Escribir "Amarillo: pedir"
				SiNo
					
					si SemInv > 10 Entonces
						Escribir "verde: pedir"
					SiNo
						Escribir "Opcion no valida"
					FinSi
				FinSi
			FinSi
	FinSi
FinAlgoritmo
