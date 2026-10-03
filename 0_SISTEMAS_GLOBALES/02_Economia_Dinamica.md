# Economía Dinámica de Skyrim

## Objetivo
Crear un sistema económico donde los precios no sean fijos ni arbitrarios. Deben depender de la ciudad, la oferta, la demanda, la temporada y los eventos del mundo.

## Principios Base
Cada producto tiene:
- precio base
- peso
- rareza
- origen principal
- valor según localización

La fórmula general es:

Precio Final = Precio Base × Multiplicador Localización × Factor Estación × Factor Saturación × Factor Evento

## Base de Datos de Precios
### Minerales y Materias Primas
- Carbón: 3 septims
- Sal: 5 septims
- Arcilla: 2 septims
- Piedra caliza: 4 septims
- Cobre bruto: 15 septims
- Estaño bruto: 12 septims
- Hierro bruto: 25 septims
- Plata bruta: 75 septims
- Oro bruto: 150 septims
- Oricalco bruto: 400 septims
- Ébano bruto: 1.200 septims
- Daedrita bruta: 5.000 septims

### Lingotes
- Cobre: 45 septims
- Estaño: 36 septims
- Bronce: 90 septims
- Hierro: 75 septims
- Acero: 180 septims
- Plata: 300 septims
- Oro: 600 septims
- Oricalco: 1.600 septims
- Ébano: 4.800 septims
- Daedra: 20.000 septims

## Multiplicadores por Localización
Cada ciudad tiene un precio base propio.

| Ciudad | Multiplicador | Especialización |
|--------|---------------|----------------|
| Solitude | x1.5 | lujo, comercio, importación |
| Windhelm | x1.3 | minería, ébano |
| Markarth | x1.4 | plata, joyería |
| Riften | x1.2 | contrabando, madera |
| Whiterun | x1.0 | referencia neutra |
| Falkreath | x0.9 | madera, funerario |
| Morthal | x0.8 | sal, pantano |
| Dawnstar | x0.85 | hierro, pesca |
| Winterhold | x0.7 | magia, aislamiento |

## Saturación y Demanda
El mercado no funciona solo por precio base. También depende del inventario local.

### Estados de saturación
- 0-20 unidades: escasez crítica
- 21-50: escasez
- 51-100: normal
- 101-200: saturado
- 201-500: exceso
- 500+: colapso

### Efectos
- Escasez: multiplicador alto
- Saturación: multiplicador bajo
- Overstock: el vendedor puede bajar mucho el precio

## Estacionalidad
Cada mes afecta los precios.

Ejemplos:
- Enero: alimentos +40%, combustible +60%
- Marzo: semillas -50%, herramientas +25%
- Julio: granos -40%, pesca -30%
- Octubre: abrigo +70%, alimentos +25%
- Diciembre: lujo +60%

La temporada cambia la oferta y la demanda, especialmente para alimentos, madera, hierro y materias primas.

## Eventos Dinámicos de Mercado
Los mercados pueden alterarse por eventos del mundo.

- Embargo de Thalmor: ébano sube explota
- Ataque dragón: alimentos y armas suben
- Descubrimiento de nueva mina: precio de un mineral cae
- Guerra civil: armas y equipo suben enormemente
- Plaga en cosecha: alimentos se vuelven muy caros

## Productos Elaborados
El valor de un producto es mayor si se fabrica con mejor calidad y en una ciudad con demanda alta.

Valor_Producto = (materiales base × 1.2) × (1 + nivel_herrero / 100) × Multiplicador_Calidad × Multiplicador_Localización × (1 + beneficio_negocio)

### Calidad
- Pobre: x0.7
- Normal: x1.0
- Buena: x1.3
- Excelente: x1.7
- Maestra: x2.2
- Legendaria: x3.0

## Rutas de Comercio
Cada ruta comercial tiene un costo y un riesgo.

Ejemplos:
- Solitude-Dawnstar: costos bajos, comercio de lujo
- Windhelm-Riften: minería y armas, alto riesgo
- Markarth-Whiterun: plata, joyas, oro
- Riften-Whiterun: madera, miel, oro

## Mercado Negro
El mercado negro actúa como economía paralela con mayor riesgo y mayores ganancias.

- Aumenta precio si está oculto
- Tiene ubicaciones específicas
- Exige reputación de sombra
- Puede provocar asaltos o caos

## Regla de Importancia
La economía del reino no es solo lo que se vende, sino dónde se vende, cuándo, con qué demanda y bajo qué circunstancias. Una ciudad rica puede tener un producto barato o caro según el momento.

## Conclusión
La economía del mod debe sentirse viva: no es estática ni homogénea. El jugador puede explotar diferencias regionales, viajar, vender barato y comprar caro, o incluso controlar rutas comerciales.

## Estado
Documento técnico extraído y estructurado desde `transcribir.txt`, listo para integrarse con la economía local de cada ciudad.
