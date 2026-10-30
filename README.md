# Análisis de Algoritmos - Sesión 02

Tablas de verdad para las condiciones lógicas y las pruebas de escritorio para verificar su funcionamiento.

## 1. Parqueadero (`Parqueadero.psc`)

Este algoritmo calcula el valor a pagar en un parqueadero basado en el tipo de vehículo, los minutos de permanencia y si se posee factura de compra.

### Tabla de Verdad (Descuento por Factura)

La condición para aplicar el descuento final depende únicamente de si la respuesta a `factura` es "S".

| factura == "S" | Resultado Lógico | Acción |
| :---: | :---: | :--- |
| Verdadero | Verdadero | `valor <- valor / 2` |a
| Falso | Falso | No aplica descuento extra |

*(Nota: Existen otras condiciones simples en el código como `minutos < 0` o `minutos <= 15`, pero son evaluaciones directas de un solo operando).*

### Prueba de Escritorio

| Entrada: tipo | Entrada: minutos | Entrada: factura | factura (Mayúsculas) | tarifa | horas | valor inicial | valor > 30000 | valor con desc. factura | Salida |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :--- |
| 1 (Carro) | 10 | 'n' | 'N' | 4000 | - | 0 | - | - | "Valor a pagar: $0" (minutos <= 15) |
| 2 (Moto) | 120 | 's' | 'S' | 2000 | 1 | 2000 | Falso | 1000 | "Valor a pagar: $1000" |
| 1 (Carro) | 600 | 'N' | 'N' | 4000 | 9 | 36000 | Verdadero (ajusta a 30000) | 30000 | "Valor a pagar: $30000" |
| 3 (Inválido)| 30 | 'n' | 'N' | 0 | - | - | - | - | "Tipo de vehiuclo no valido" |
| 1 (Carro) | -5 | 's' | 'S' | - | - | - | - | - | "Los minutos no pueden ser negativos" |

---

## 2. Semáforo (`Semaforo.psc`)

Este algoritmo evalúa un número de inventario para determinar una acción de reabastecimiento simulando los colores de un semáforo.

### Tabla de Verdad

La condición principal compuesta es: `SemInv >= 1 y SemInv <= 10`

| `SemInv >= 1` (A) | `SemInv <= 10` (B) | `A Y B` | Acción |
| :---: | :---: | :---: | :--- |
| Verdadero | Verdadero | Verdadero | Escribir "Amarillo: pedir" |
| Verdadero | Falso | Falso | Pasa a evaluar `SemInv > 10` |
| Falso | Verdadero | Falso | Pasa a evaluar otras condiciones |
| Falso | Falso | Falso | (Imposible con un solo número, pero teóricamente falso) |

### Prueba de Escritorio

| Entrada: SemInv | SemInv < 0 | SemInv = 0 | SemInv >= 1 y <= 10 | SemInv > 10 | Salida |
| :---: | :---: | :---: | :---: | :---: | :--- |
| -5 | Verdadero | - | - | - | "error" |
| 0 | Falso | Verdadero | - | - | "Rojo: agotado" |
| 5 | Falso | Falso | Verdadero | - | "Amarillo: pedir" |
| 15 | Falso | Falso | Falso | Verdadero | "verde: pedir" |

---

## 3. Validar Edad (`ValidarEdad.psc`)

Este algoritmo verifica si una edad ingresada está dentro de un rango considerado válido (0 a 120 años).

### Tabla de Verdad

La condición es: `edad < 0 o edad > 120`

| `edad < 0` (A) | `edad > 120` (B) | `A O B` | Resultado / Salida |
| :---: | :---: | :---: | :--- |
| Verdadero | Falso | Verdadero | "Edad invalida" |
| Falso | Verdadero | Verdadero | "Edad invalida" |
| Falso | Falso | Falso | "Edad valida" |
| Verdadero | Verdadero | Falso | (Imposible que un número cumpla ambas, pero teóricamente falso) |

### Prueba de Escritorio

| Entrada: edad | edad < 0 | edad > 120 | Condición (O) | Salida |
| :---: | :---: | :---: | :---: | :--- |
| -5 | Verdadero | Falso | Verdadero | "Edad invalida" |
| 130 | Falso | Verdadero | Verdadero | "Edad invalida" |
| 25 | Falso | Falso | Falso | "Edad valida" |

---

## 4. Validar Registro (`ValidarRegistro.psc`)

Este algoritmo determina si un usuario puede registrarse basándose en su edad y su aceptación de los términos y condiciones.

### Tabla de Verdad

La condición es: `edad >= 14 y respuesta = "S"`

| `edad >= 14` (A) | `respuesta = "S"` (B) | `A Y B` | Resultado / Salida |
| :---: | :---: | :---: | :--- |
| Verdadero | Verdadero | Verdadero | "Refistro exitoso" |
| Verdadero | Falso | Falso | "No puedes registrarte" |
| Falso | Verdadero | Falso | "No puedes registrarte" |
| Falso | Falso | Falso | "No puedes registrarte" |

*(Nota: El código original asume que `respuesta` se transforma a mayúsculas antes de la evaluación, lo cual es correcto)*.

### Prueba de Escritorio

| Entrada: edad | Entrada: respuesta | respues (Mayúsculas) | edad >= 14 | respues = "S" | Condición (Y) | Salida |
| :---: | :---: | :---: | :---: | :---: | :---: | :--- |
| 15 | 's' | 'S' | Verdadero | Verdadero | Verdadero | "Refistro exitoso" |
| 12 | 's' | 'S' | Falso | Verdadero | Falso | "No puedes registrarte" |
| 18 | 'n' | 'N' | Verdadero | Falso | Falso | "No puedes registrarte" |
| 10 | 'n' | 'N' | Falso | Falso | Falso | "No puedes registrarte" |

---

## 5. Comprobar Año Bisiesto (`anio_.psc`)

Este algoritmo verifica si un año dado es bisiesto. Las reglas son: es bisiesto si es divisible por 4 y no por 100, a menos que también sea divisible por 400.

### Tabla de Verdad

La condición es: `(anio MOD 4 = 0 y anio mod 100 <> 0) o anio MOD 400 = 0`

| `anio MOD 4 = 0` (A) | `anio MOD 100 <> 0` (B) | `A Y B` (X) | `anio MOD 400 = 0` (C) | `X O C` | Resultado |
| :---: | :---: | :---: | :---: | :---: | :--- |
| Verdadero | Verdadero | Verdadero | Falso | Verdadero | Es bisiesto (ej. 2024) |
| Verdadero | Falso | Falso | Verdadero | Verdadero | Es bisiesto (ej. 2000) |
| Verdadero | Falso | Falso | Falso | Falso | No es bisiesto (ej. 1900) |
| Falso | Verdadero | Falso | Falso | Falso | No es bisiesto (ej. 2023) |

### Prueba de Escritorio

| Entrada: anio | `MOD 4 = 0` | `MOD 100 <> 0` | `(A Y B)` | `MOD 400 = 0` | Condición Final | Salida |
| :---: | :---: | :---: | :---: | :---: | :---: | :--- |
| 2024 | Verdadero | Verdadero | Verdadero | Falso | Verdadero | "2024 es bisiesto" |
| 1900 | Verdadero | Falso | Falso | Falso | Falso | "1900 no es bisiesto" |
| 2000 | Verdadero | Falso | Falso | Verdadero | Verdadero | "2000 es bisiesto" |
| 2023 | Falso | Verdadero | Falso | Falso | Falso | "2023 no es bisiesto" |
