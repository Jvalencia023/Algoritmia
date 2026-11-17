Algoritmo ValidarRegistro
	Definir edad como entero
	Definir respuesta Como Caracter
	Escribir "Cuantos años tienes?"
	Leer edad 
	Escribir "Aceptas los terminos y condiciones?"
	Leer respuesta
	respues <- Mayusculas(respuesta)
	si edad >= 14 y respuesta = "S" Entonces
		Escribir "Refistro exitoso"
		
	SiNo
		Escribir "No puedes registrarte"
	FinSi
FinAlgoritmo
