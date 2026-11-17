# Evidencia de Aprendizaje - Sesión 03 (PSeInt)

Este repositorio contiene los algoritmos desarrollados en PSeInt correspondientes a estructuras condicionales y cíclicas, junto con el árbol de componentes del proyecto y las pruebas de escritorio (trazas) detalladas.

## 📂 Árbol de Componentes

```
sesion-03/
├── CajeroParqueadero.psc   # Cálculo de tarifas, validación de pago y devuelta
├── ValidarPIN.psc          # Control de acceso con límite de 3 intentos (Ciclo Mientras)
├── Calificaciones.psc      # Promedio, nota mayor/menor y validación de rango (Ciclo Para/Repetir)
├── Piramide.psc            # Generación gráfica en consola con ciclos anidados (Ciclo Para)
├── FacturaRestaurante.psc  # Menú interactivo con acumulador, impuestos y propina
└── README.md               # Documentación, árbol de componentes y trazas de ejecución
```

## 🔍 Trazas de Ejecución (Pruebas de Escritorio)

### 1. Traza de `CajeroParqueadero.psc`

**Escenario de prueba:** Un usuario ingresa con un **Carro** (`tipoVehiculo = 1`) de placa `"ABC123"`, permanece **3 horas** (`horas = 3`), intenta pagar inicialmente con `$5000` (insuficiente) y luego paga con `$10000`.

| Paso / Línea | `placa` | `tipoVehiculo` | `horas` | `tarifaHora` | `totalPagar` | `pago` | `devuelta` | Salida en Consola / Observación |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Inicio / Lectura | `"ABC123"` | `1` | `3` | - | - | - | - | Solicita placa, tipo y horas |
| `Segun tipoVehiculo` | `"ABC123"` | `1` | `3` | `3000` | - | - | - | Asigna tarifa de Carro (\$3000) |
| `Si tarifaHora > 0...` | `"ABC123"` | `1` | `3` | `3000` | `9000` | - | - | `"Total a pagar por el vehiculo ABC123: $9000"` |
| `Repetir` (Iteración 1) | `"ABC123"` | `1` | `3` | `3000` | `9000` | `5000` | - | `5000 < 9000` $\rightarrow$ `"Monto insuficiente. Faltan $4000"` |
| `Repetir` (Iteración 2) | `"ABC123"` | `1` | `3` | `3000` | `9000` | `10000` | - | `10000 >= 9000` $\rightarrow$ Sale del ciclo `Repetir` |
| Cálculo `devuelta` | `"ABC123"` | `1` | `3` | `3000` | `9000` | `10000` | `1000` | `"Pago exitoso. Su devuelta es: $1000"` |

### 2. Traza de `Piramide.psc`

**Escenario de prueba:** El usuario solicita construir una pirámide con una altura de **4 filas** (`altura = 4`).

* **Fórmula de espacios por fila:** $\text{altura} - \text{fila}$
* **Fórmula de asteriscos por fila:** $2 \times \text{fila} - 1$

| Iteración Externa (`fila`) | Límite Espacios (`4 - fila`) | Iteraciones `espacio` | Límite Asteriscos (`2 * fila - 1`) | Iteraciones `asterisco` | Salida generada en esa fila |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `1` | `3` | `1, 2, 3` (3 espacios) | `1` | `1` (1 asterisco) | `   *` |
| `2` | `2` | `1, 2` (2 espacios) | `3` | `1, 2, 3` (3 asteriscos) | `  ***` |
| `3` | `1` | `1` (1 espacio) | `5` | `1, 2, 3, 4, 5` (5 asteriscos) | ` *****` |
| `4` | `0` | Ninguna (0 espacios) | `7` | `1, 2, 3, 4, 5, 6, 7` (7 asteriscos) | `*******` |

**Resultado final en consola:**
```text
   *
  ***
 *****
*******
```