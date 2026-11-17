# Ejercicios de Algoritmia en PSeInt

Este repositorio contiene una colección de 4 algoritmos básicos desarrollados en pseudocódigo (PSeInt), junto con sus respectivas pruebas de ejecución (entradas y salidas esperadas).

---

## 1. Edad en Días (`EdadEnDias`)
Calcula la cantidad aproximada de días vividos por una persona a partir de su edad en años (asumiendo años de 365 días).

### Pruebas de Ejecución

**Prueba 1:**
* **Entrada:**
  * `edad`: `20`
* **Salida:**
  ```text
  Cuantos años tienes?
  > 20
  has vivido 7300 dias
  ```

**Prueba 2:**
* **Entrada:**
  * `edad`: `35`
* **Salida:**
  ```text
  Cuantos años tienes?
  > 35
  has vivido 12775 dias
  ```

---

## 2. Promedio de Notas (`PromedioNotas`)
Solicita 5 calificaciones numéricas y calcula el promedio aritmético entre ellas.

### Pruebas de Ejecución

**Prueba 1:**
* **Entrada:**
  * `nota1`: `4.0`
  * `nota2`: `3.5`
  * `nota3`: `5.0`
  * `nota4`: `4.5`
  * `nota5`: `3.0`
* **Salida:**
  ```text
  Ingrese la nota 1
  > 4.0
  Ingrese la nota 2
  > 3.5
  Ingrese la nota 3
  > 5.0
  Ingrese la nota 4
  > 4.5
  Ingrese la nota 5
  > 3.0
  El promedio es : 4
  ```

**Prueba 2:**
* **Entrada:**
  * `nota1`: `2.5`
  * `nota2`: `3.0`
  * `nota3`: `2.8`
  * `nota4`: `3.2`
  * `nota5`: `4.0`
* **Salida:**
  ```text
  Ingrese la nota 1
  > 2.5
  Ingrese la nota 2
  > 3.0
  Ingrese la nota 3
  > 2.8
  Ingrese la nota 4
  > 3.2
  Ingrese la nota 5
  > 4.0
  El promedio es : 3.1
  ```

---

## 3. Calculadora de Propinas (`Propinas`)
Calcula el valor de la propina según el porcentaje indicado, lo suma al total de la cuenta y divide el monto final en partes iguales según el número de personas.

### Pruebas de Ejecución

**Prueba 1:**
* **Entrada:**
  * `cuenta`: `100000`
  * `porcentaje`: `10`
  * `personas`: `4`
* **Salida:**
  ```text
  Digite la cuenta
  > 100000
  y su porcentaje
  > 10
  Ahora el numero de personas
  > 4
  Cada uno paga: $27500
  ```

**Prueba 2:**
* **Entrada:**
  * `cuenta`: `50000`
  * `porcentaje`: `15`
  * `personas`: `2`
* **Salida:**
  ```text
  Digite la cuenta
  > 50000
  y su porcentaje
  > 15
  Ahora el numero de personas
  > 2
  Cada uno paga: $28750
  ```

---

## 4. Saludo Personalizado (`Saludo`)
Solicita el nombre del usuario y muestra un mensaje de bienvenida personalizado.

> **Nota técnica:** En la última línea del código original (`Escribir "Hola ", nombre ". Bienvenido a algoritmia"`), asegúrate de incluir una coma después de la variable `nombre` (`Escribir "Hola ", nombre, ". Bienvenido a algoritmia"`) para evitar errores de sintaxis en PSeInt.

### Pruebas de Ejecución

**Prueba 1:**
* **Entrada:**
  * `nombre`: `Carlos`
* **Salida:**
  ```text
  Como te llamas?
  > Carlos
  Hola Carlos. Bienvenido a algoritmia
  ```

**Prueba 2:**
* **Entrada:**
  * `nombre`: `Mariana`
* **Salida:**
  ```text
  Como te llamas?
  > Mariana
  Hola Mariana. Bienvenido a algoritmia
  ```