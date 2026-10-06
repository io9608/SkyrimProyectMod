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

# **SISTEMA ECONÓMICO DINÁMICO SKYRIM**

## **Gremio de Comerciantes - Arquitectura Centralizada**

---

## **I. ESTRUCTURA DEL GREMIO DE COMERCIANTES**

### **Sedes y Rangos:**

|Sede|NPC Maestro|Función Especial|Acceso a Datos|
|---|---|---|---|
|**Solitude**|**Gran Maestre Vexis**|Control imperial, comercio exterior|100% mercado|
|**Whiterun**|**Maestre Belethor**|Centro comercial, agricultura|80% mercado|
|**Windhelm**|**Maestre Aval**|Comercio ártico, contrabando|70% mercado|
|**Riften**|**Maestre Madesi**|Red de información, especias|60% mercado|
|**Markarth**|**Maestre Endon**|Metales, joyería|60% mercado|
|**Dawnstar**|**Maestre Silus**|Minerales, pesca ártica|40% mercado|
|**Morthal**|**Maestre Falion**|Alquimia, ingredientes raros|30% mercado|
|**Winterhold**|**Maestre Drevis**|Conocimiento mágico, libros|20% mercado|
|**Falkreath**|**Maestre Lod**|Madera, servicios funerarios|40% mercado|

### **Rangos del Jugador en el Gremio:**

|Rango|Requisito|Beneficios|Acceso a Datos|
|---|---|---|---|
|**Aprendiz**|Quest inicial|Precios base, información básica|10%|
|**Comerciante**|5 transacciones + 1000 oro|Descuentos 5%, tendencias locales|25%|
|**Mercader**|20 transacciones + 5000 oro|Descuentos 10%, red de contactos|50%|
|**Magnate**|50 transacciones + 20000 oro|Descuentos 15%, manipular precios locales|75%|
|**Maestre**|Quest final + 100000 oro|Descuentos 20%, control de mercado|100%|

---

## **II. SISTEMA DE VARIABLES ECONÓMICAS GLOBALES**

### **Variables Maestras (Almacenadas en Global Variables):**

pseudocode

```
; VARIABLES GLOBALES DEL GREMIOSKyrimEconomyQuest

; ===== PRECIO BASE (Índice 100 = precio vanilla) =====
float fBasePriceIndex = 100.0

; ===== OFERTA GLOBAL POR CATEGORÍA (0.0 - 2.0) =====
; < 1.0 = escasez (precios suben)
; > 1.0 = exceso (precios bajan)
float fFoodSupply = 1.0
float fMetalSupply = 1.0
float fPotionSupply = 1.0
float fIngredientSupply = 1.0
float fMaterialSupply = 1.0
float fLuxurySupply = 1.0

; ===== DEMANDA GLOBAL POR CATEGORÍA (0.5 - 1.5) =====
; Modificada por eventos mundiales
float fFoodDemand = 1.0
float fMetalDemand = 1.0
float fPotionDemand = 1.0
float fIngredientDemand = 1.0
float fMaterialDemand = 1.0
float fLuxuryDemand = 1.0

; ===== ESTACIÓN ACTUAL =====
int iCurrentSeason = 0 ; 0=Invierno, 1=Primavera, 2=Verano, 3=Otoño
int iCurrentMonth = 0 ; 0-11 (Morning Star a Evening Star)

; ===== EVENTOS MUNDIALES (0.0 = normal, 1.0 = máximo impacto) =====
float fWarImpact = 0.0 ; Guerra Civil
float fDragonImpact = 0.0 ; Ataques de dragones
float fPlagueImpact = 0.0 ; Enfermedades
float fFestivalBoost = 0.0 ; Festividades activas

; ===== INVENTARIO DEL JUGADOR (última transacción) =====
int iLastSoldItemID = 0
int iLastSoldQuantity = 0
int iLastSoldLocation = 0 ; ID del hold
```

---

## **III. SISTEMA DE CATEGORÍAS DE BIENES**

### **Categorías Principales y Subtipos:**

pseudocode

```
; CATEGORIA 1: ALIMENTOS (fFood)
int CATEGORY_FOOD = 1
    ; Subtipos:
    int SUBTYPE_GRAIN = 11      ; Trigo, cebada
    int SUBTYPE_MEAT = 12       ; Carne cruda, cocinada
    int SUBTYPE_PRODUCE = 13    ; Verduras, frutas
    int SUBTYPE_FISH = 14       ; Pescado
    int SUBTYPE_BEVERAGE = 15   ; Hidromiel, vino, agua

; CATEGORIA 2: METALES (fMetal)
int CATEGORY_METAL = 2
    int SUBTYPE_ORE = 21        ; Mineral bruto
    int SUBTYPE_INGOT = 22      ; Lingotes
    int SUBTYPE_WEAPON = 23     ; Armas
    int SUBTYPE_ARMOR = 24      ; Armaduras
    int SUBTYPE_TOOLS = 25      ; Herramientas

; CATEGORIA 3: ALQUIMIA (fPotion)
int CATEGORY_ALCHEMY = 3
    int SUBTYPE_POTION = 31     ; Pociones terminadas
    int SUBTYPE_POISON = 32     ; Venenos
    int SUBTYPE_INGREDIENT = 33 ; Ingredientes

; CATEGORIA 4: MATERIALES (fMaterial)
int CATEGORY_MATERIAL = 4
    int SUBTYPE_WOOD = 41       ; Madera
    int SUBTYPE_LEATHER = 42    ; Cuero, pieles
    int SUBTYPE_CLOTH = 43      ; Telas
    int SUBTYPE_STONE = 44      ; Piedra

; CATEGORIA 5: LUJOS (fLuxury)
int CATEGORY_LUXURY = 5
    int SUBTYPE_GEM = 51        ; Gemas
    int SUBTYPE_JEWELRY = 52    ; Joyería
    int SUBTYPE_ART = 53        ; Artefactos, libros raros
    int SUBTYPE_SPIRIT = 54     ; Alcohol fino
```

---

## **IV. TABLA DE PRECIOS BASE Y MODIFICADORES**

### **Precios Base por Categoría (Índice 100 = vanilla):**

|Categoría|Precio Base|Volatilidad|Recuperación|
|---|---|---|---|
|**Alimentos**|100|Baja (±15%)|3 días|
|**Metales**|100|Media (±25%)|7 días|
|**Alquimia**|100|Alta (±40%)|5 días|
|**Materiales**|100|Baja (±20%)|7 días|
|**Lujos**|100|Muy alta (±60%)|14 días|

### **Modificadores de Estación (Multiplicadores):**

pseudocode

```
; INVIERNO (Morning Star, Sun's Dawn, Evening Star)
SeasonModifier[0] = {
    CATEGORY_FOOD: 1.30,      ; Escasez invernal
    CATEGORY_METAL: 0.90,    ; Menos construcción
    CATEGORY_ALCHEMY: 1.10,   ; Enfermedades comunes
    CATEGORY_MATERIAL: 0.80,   ; Menos construcción
    CATEGORY_LUXURY: 1.20      ; Festividades (Saturalia)
}

; PRIMAVERA (First Seed, Rain's Hand, Second Seed)
SeasonModifier[1] = {
    CATEGORY_FOOD: 0.80,      ; Nuevas cosechas próximas
    CATEGORY_METAL: 1.10,     ; Preparación construcción
    CATEGORY_ALCHEMY: 1.30,   ; Ingredientes frescos (plantas)
    CATEGORY_MATERIAL: 1.20,   ; Construcción nueva
    CATEGORY_LUXURY: 0.90     ; Post-festividades
}

; VERANO (Mid Year, Sun's Height, Last Seed)
SeasonModifier[2] = {
    CATEGORY_FOOD: 0.70,      ; Cosecha abundante
    CATEGORY_METAL: 1.20,      ; Construcción máxima
    CATEGORY_ALCHEMY: 0.90,    ; Ingredientes comunes
    CATEGORY_MATERIAL: 1.30,   ; Construcción máxima
    CATEGORY_LUXURY: 1.10      ; Viajes nobles
}

; OTOÑO (Hearthfire, Frostfall, Sun's Dusk)
SeasonModifier[3] = {
    CATEGORY_FOOD: 1.00,      ; Cosecha reciente
    CATEGORY_METAL: 1.00,      ; Preparación invierno
    CATEGORY_ALCHEMY: 1.40,    ; Última cosecha de plantas
    CATEGORY_MATERIAL: 1.10,   ; Preparación invierno
    CATEGORY_LUXURY: 0.80      ; Austeridad pre-invierno
}
```

---

## **V. SISTEMA DE OFERTA Y DEMANDA POR HOLD**

### **Estructura de Datos por Hold:**

pseudocode

```
; Para cada hold (9 totales), almacenar:

Struct HoldEconomyData
    int iHoldID                                    ; Identificador único
    
    ; OFERTA LOCAL (0.0 - 2.0)
    float fLocalFoodSupply
    float fLocalMetalSupply
    float fLocalPotionSupply
    float fLocalIngredientSupply
    float fLocalMaterialSupply
    float fLocalLuxurySupply
    
    ; DEMANDA LOCAL (0.5 - 1.5)
    float fLocalFoodDemand
    float fLocalMetalDemand
    float fLocalPotionDemand
    float fLocalIngredientDemand
    float fLocalMaterialDemand
    float fLocalLuxuryDemand
    
    ; ESPECIALIZACIÓN (multiplicador de producción)
    float fFoodProductionBonus      ; Whiterun: 1.5, Winterhold: 0.3
    float fMetalProductionBonus     ; Markarth: 1.5, Winterhold: 0.2
    float fPotionProductionBonus    ; Morthal: 1.3, Winterhold: 1.2
    float fIngredientProductionBonus ; Morthal: 1.4
    float fMaterialProductionBonus  ; Falkreath: 1.5
    float fLuxuryProductionBonus    ; Solitude: 1.3
    
    ; HISTORIAL DE TRANSACCIONES (últimas 10)
    TransactionRecord[] recentTransactions
    
    ; FACTORES ÚNICOS DEL HOLD
    bool bIsPortCity          ; Solitude, Dawnstar, Windhelm
    bool bIsCapital           ; Solitude
    bool bAtWar               ; Estado de conflicto
    bool bHasDragonProblem    ; Ataques recientes
    bool bHasPlague           ; Enfermedad activa
EndStruct
```

### **Valores de Especialización por Hold:**

|Hold|Food|Metal|Potion|Ingredient|Material|Luxury|
|---|---|---|---|---|---|---|
|**Solitude**|0.8|0.9|1.0|0.8|0.7|**1.5**|
|**Whiterun**|**1.5**|0.8|0.9|0.9|1.0|0.8|
|**Windhelm**|0.5|0.9|0.7|0.6|0.8|1.0|
|**Riften**|**1.3**|0.7|1.1|**1.3**|0.9|0.9|
|**Markarth**|0.6|**1.5**|0.8|0.9|0.8|**1.2**|
|**Dawnstar**|0.5|**1.4**|0.6|0.5|0.6|0.7|
|**Morthal**|0.4|0.5|**1.3**|**1.4**|0.5|0.5|
|**Winterhold**|0.3|0.3|**1.5**|1.0|0.3|0.4|
|**Falkreath**|0.7|0.5|1.0|**1.2**|**1.5**|0.6|

---

## **VI. ALGORITMO DE CÁLCULO DE PRECIOS**

### **Fórmula Principal:**

pseudocode

```
Function CalculatePrice(int itemID, int category, int holdID, int quantity) float
    
    ; PASO 1: Obtener precio base del item
    float basePrice = GetBasePrice(itemID)
    
    ; PASO 2: Aplicar índice global de categoría
    float globalModifier = GetGlobalCategoryModifier(category)
    ; globalModifier = (fSupplyCategory / fDemandCategory) * fBasePriceIndex
    
    ; PASO 3: Aplicar modificador de estación
    float seasonMod = SeasonModifier[iCurrentSeason][category]
    
    ; PASO 4: Aplicar modificador de hold (oferta/demanda local)
    float localSupply = GetHoldSupply(holdID, category)
    float localDemand = GetHoldDemand(holdID, category)
    float localModifier = localDemand / localSupply
    
    ; PASO 5: Aplicar impacto de transacciones recientes del jugador
    float playerImpact = CalculatePlayerImpact(holdID, category, quantity)
    ; Si el jugador vende mucho, playerImpact < 1.0 (precios bajan)
    
    ; PASO 6: Aplicar eventos mundiales
    float eventModifier = CalculateEventImpact(category)
    
    ; PASO 7: Aplicar modificador de rareza del item
    float rarityMod = GetRarityModifier(itemID)
    
    ; CÁLCULO FINAL
    float finalPrice = basePrice * globalModifier * seasonMod * localModifier * playerImpact * eventModifier * rarityMod
    
    ; LIMITES (evitar precios absurdos)
    if finalPrice < basePrice * 0.25
        finalPrice = basePrice * 0.25
    elseif finalPrice > basePrice * 4.0
        finalPrice = basePrice * 4.0
    
    return finalPrice
EndFunction
```

### **Cálculo de Impacto del Jugador:**

pseudocode

```
Function CalculatePlayerImpact(int holdID, int category, int quantity) float
    
    ; Obtener historial de transacciones del jugador en este hold
    TransactionRecord[] playerHistory = GetPlayerTransactions(holdID, category, iDays = 7)
    
    float totalSold = 0
    float totalBought = 0
    
    foreach transaction in playerHistory
        if transaction.type == SELL
            totalSold += transaction.quantity
        else
            totalBought += transaction.quantity
        endif
    endforeach
    
    ; Calcular saturación del mercado
    float marketSaturation = totalSold / GetMarketCapacity(holdID, category)
    ; marketCapacity = población * consumo diario estimado * 7 días
    
    ; Calcular escasez inducida por compras
    float marketScarcity = totalBought / GetMarketInventory(holdID, category)
    
    ; Fórmula de impacto
    float impact = 1.0 - (marketSaturation * 0.5) + (marketScarcity * 0.3)
    
    ; Limitar entre 0.5 y 1.5
    if impact < 0.5
        impact = 0.5
    elseif impact > 1.5
        impact = 1.5
    
    return impact
EndFunction
```

---

## **VII. SISTEMA DE PLANTAS E INGREDIENTES DE ALQUIMIA**

### **Zonas de Crecimiento y Disponibilidad:**

pseudocode

```
; DEFINICIÓN DE ZONAS ALQUÍMICAS
int ZONE_TUNDRA = 1         ; Whiterun, áreas abiertas
int ZONE_FOREST_TEMPERATE = 2  ; Falkreath, Riften
int ZONE_FOREST_BOREAL = 3     ; Pale, Hjaalmarch
int ZONE_MOUNTAIN = 4       ; Markarth, Reach
int ZONE_ARCTIC = 5         ; Winterhold, Pale norte
int ZONE_COASTAL = 6        ; Solitude, Dawnstar, Morthal
int ZONE_SWAMP = 7          ; Hjaalmarch exclusivo
int ZONE_VOLCANIC = 8       ; Solstheim (Dragonborn)
int ZONE_CAVE = 9           ; Subterráneo
int ZONE_RIVER = 10         ; Orillas de ríos

; Cada planta tiene zonas preferidas y zonas donde no crece
Struct PlantData
    int iPlantID
    string sName
    int[] preferredZones      ; Zonas donde abunda (multiplicador 1.5x)
    int[] possibleZones       ; Zonas donde crece normal (1.0x)
    int[] rareZones           ; Zonas donde es rara (0.3x)
    int[] impossibleZones     ; Zonas donde no crece (0.0x)
    
    int iBaseHarvest          ; Cantidad base cosechable
    int iSeasons              ; Máscara de bits de estaciones (1=Inv, 2=Pri, 4=Ver, 8=Oto)
    int iRarity               ; 1=común, 5=legendario
    
    int[] effects             ; Efectos alquímicos
EndStruct
```

### **Tabla de Plantas por Zona y Estación:**

|Planta|Zonas Preferidas|Zonas Raras|Estaciones|Raridad|
|---|---|---|---|---|
|**Blue Mountain Flower**|MOUNTAIN, FOREST_TEMP|ARCTIC, SWAMP|Primavera, Verano|1|
|**Lavender**|TUNDRA, FOREST_TEMP|ARCTIC, SWAMP|Verano|1|
|**Snowberries**|ARCTIC, MOUNTAIN|—|Invierno, Otoño|1|
|**Deathbell**|SWAMP, COASTAL|—|Todo el año|2|
|**Nightshade**|FOREST_TEMP, CAVE|—|Otoño|2|
|**Nirnroot**|RIVER, COASTAL|—|Todo el año|3|
|**Crimson Nirnroot**|CAVE (zonas específicas)|—|Todo el año|4|
|**Jarrin Root**|—|—|—|5 (único)|
|**Trama Root**|VOLCANIC|—|Todo el año|3|
|**Salmon Roe**|RIVER|—|Otoño|2|
|**Histcarp**|RIVER, SWAMP|—|Primavera, Verano|2|
|**Cyrodilic Spadetail**|RIVER|—|Verano|1|

### **Cálculo de Precio de Ingredientes:**

pseudocode

```
Function CalculateIngredientPrice(int plantID, int holdID) float
    
    PlantData plant = GetPlantData(plantID)
    
    ; PASO 1: Precio base según rareza
    float basePrice = 10 * plant.iRarity * plant.iRarity  ; 10, 40, 90, 160, 250
    
    ; PASO 2: Modificador de zona del hold
    int holdZone = GetHoldPrimaryZone(holdID)
    float zoneModifier = 1.0
    
    if holdZone in plant.preferredZones
        zoneModifier = 0.7  ; Abundante = más barato
    elseif holdZone in plant.possibleZones
        zoneModifier = 1.0  ; Normal
    elseif holdZone in plant.rareZones
        zoneModifier = 2.5  ; Raro = caro
    else
        zoneModifier = 5.0  ; Importado = muy caro
    
    ; PASO 3: Modificador de estación
    float seasonMod = 1.0
    if !(iCurrentSeasonBitwise & plant.iSeasons)
        seasonMod = 3.0  ; Fuera de temporada = caro
    
    ; PASO 4: Oferta local (acumulación por ventas del jugador)
    float localSupply = GetLocalIngredientSupply(holdID, plantID)
    float supplyMod = 1.0 / (localSupply + 0.5)  ; Más stock = precio bajo
    
    ; PASO 5: Demanda alquímica (eventos)
    float demandMod = GetAlchemyDemand(holdID)
    
    ; CÁLCULO
    float finalPrice = basePrice * zoneModifier * seasonMod * supplyMod * demandMod
    
    return finalPrice
EndFunction
```

---

## **VIII. EVENTOS DINÁMICOS QUE AFECTAN PRECIOS**

### **Tipos de Eventos y su Impacto:**

pseudocode

```
; EVENTOS MUNDIALES
Event WAR_CIVIL_STARTED
    fMetalDemand += 0.3        ; Armas necesarias
    fFoodDemand += 0.2         ; Tropas necesitan comida
    fLuxuryDemand -= 0.3       ; Austeridad
    ; Hold en conflicto: precios ×1.5
    
Event WAR_CIVIL_ENDED
    fMetalDemand -= 0.2
    fLuxuryDemand += 0.2       ; Celebración
    
Event DRAGON_ATTACK
    int holdID = GetRandomHold()
    SetHoldFlag(holdID, DRAGON_CRISIS, true)
    fFoodSupply -= 0.2         ; Granjas destruidas
    fPotionDemand += 0.4       ; Curaciones necesarias
    fLuxuryDemand -= 0.4       ; Pánico
    
Event HARVEST_BUMPER
    int holdID = GetAgriculturalHold()
    ModifyHoldSupply(holdID, CATEGORY_FOOD, +0.5)
    ; Precios alimentos bajan 30% en ese hold
    
Event MINE_COLLAPSE
    int holdID = GetMiningHold()
    ModifyHoldSupply(holdID, CATEGORY_METAL, -0.4)
    ; Precios metales suben 40%
    
Event FESTIVAL_START
    int festivalID = GetCurrentFestival()
    fLuxuryDemand += 0.3
    fFoodDemand += 0.2
    fPotionDemand += 0.1       ; Resacas
    
Event PLAGUE_OUTBREAK
    int holdID = GetRandomHold()
    SetHoldFlag(holdID, PLAGUE, true)
    fPotionDemand += 0.6       ; Curaciones urgentes
    fIngredientDemand += 0.4
    fFoodSupply -= 0.3         ; Agricultores enfermos
    
Event TRADE_CARAVAN_ARRIVAL
    int holdID = GetCaravanDestination()
    ; Aumenta oferta de bienes exóticos temporalmente
    ModifyHoldSupply(holdID, CATEGORY_LUXURY, +0.3)
    ModifyHoldSupply(holdID, CATEGORY_ALCHEMY, +0.2)
```

---

## **IX. INTERFAZ DEL GREMIOS (UI)**

### **Menú de Comerciante (accesible en sedes):**

```
┌─────────────────────────────────────────────────────────┐
│      GREMIOS DE COMERCIANTES - TERMINAL DE MERCADO      │
├─────────────────────────────────────────────────────────┤
│  [Rango: Mercader] [Oro en Gremio: 5,340]              │
├─────────────────────────────────────────────────────────┤
│  SELECCIONE OPCIÓN:                                     │
│                                                          │
│  [1] VER TENDENCIAS DE MERCADO                          │
│  [2] VER INVENTARIO POR HOLD                            │
│  [3] CONSULTAR PRECIOS ESPECÍFICOS                      │
│  [4] INVERTIR EN MERCANCÍA                              │
│  [5] CONTRATAR CARAVANA                                 │
│  [6] INFORMACIÓN DE RUTAS                               │
│  [7] MISIÓN DEL GREMIOS                                 │
│                                                          │
│  [Estación: Otoño] [Día: 15 Hearthfire, 4E 201]       │
└─────────────────────────────────────────────────────────┘
```

### **Pantalla de Tendencias:**

```
┌─────────────────────────────────────────────────────────┐
│  TENDENCIAS GLOBALES - 15 Hearthfire, 4E 201             │
├─────────────────────────────────────────────────────────┤
│  CATEGORÍA        TENDENCIA    PRECIO    VOLATILIDAD   │
│  ─────────────────────────────────────────────────────  │
│  Alimentos        ↓ BAJANDO    85%       Estable        │
│  Metales          ↑ SUBIENDO   125%      Alta           │
│  Alquimia         → ESTABLE    100%      Media          │
│  Materiales       ↑ SUBIENDO   110%      Media          │
│  Lujos            ↓ BAJANDO    75%       Muy alta       │
├─────────────────────────────────────────────────────────┤
│  EVENTOS ACTIVOS:                                       │
│  • Guerra Civil: Impacto moderado en metales           │
│  • Festival de la Cosecha: Alimentos -30% (temporal)     │
│  • Ataque de dragón en Pale: Alquimia +45%            │
└─────────────────────────────────────────────────────────┘
```

---

## **X. IMPLEMENTACIÓN TÉCNICA OPTIMIZADA**

### **Estrategia de Optimización:**

pseudocode

```
; PRINCIPIO: Calcular solo cuando es necesario

; 1. ACTUALIZACIÓN GLOBAL (cada día de juego, 00:00)
Event OnGameDayPassed()
    UpdateSeason()              ; Cambiar estación si aplica
    UpdateGlobalSupplyDemand()  ; Recuperación natural
    UpdateEventTimers()         ; Progresar eventos activos
    UpdatePriceCache()          ; Invalidar caché de precios
EndEvent

; 2. CÁLCULO BAJO DEMANDA (cuando el jugador abre comercio)
Event OnMerchantOpen(ObjectReference merchant)
    ; Calcular precios solo para items visibles
    CalculateVisiblePrices(merchant)
EndEvent

; 3. CACHÉ DE PRECIOS (evitar recálculos)
float[] priceCache
int[] cacheTimestamp

Function GetCachedPrice(int itemID, int holdID) float
    int cacheIndex = GetCacheIndex(itemID, holdID)
    
    ; Si el caché tiene menos de 1 hora de juego, usarlo
    if (GameTime - cacheTimestamp[cacheIndex]) < 1.0
        return priceCache[cacheIndex]
    else
        float newPrice = CalculatePrice(itemID, holdID)
        priceCache[cacheIndex] = newPrice
        cacheTimestamp[cacheIndex] = GameTime
        return newPrice
    endif
EndFunction

; 4. COMPRESIÓN DE DATOS
; Guardar solo cambios significativos (>5%)
; Usar enteros en lugar de floats donde sea posible
; Almacenar historial como promedios, no transacciones individuales

; 5. LIMPIEZA PERIÓDICA
Event OnGameWeekPassed()
    CleanupOldTransactions()    ; Borrar transacciones >30 días
    CompressPriceHistory()      ; Promediar datos antiguos
EndEvent
```

### **Variables Mínimas Necesarias:**

pseudocode

```
; TOTAL DE VARIABLES GLOBALES: ~50 (manejable)
; Categorías (5) × Tipos de datos (supply, demand, etc.) = ~25
; Eventos globales = ~5
; Datos de hold (9) × especialización (6) = 54 (almacenados como array)
; Estación y tiempo = ~3

; TOTAL ESTIMADO: ~80-90 variables globales
; Memoria: < 10KB
; Impacto rendimiento: Mínimo (cálculos solo en interacción comercial)
```

---

## **XI. SISTEMA DE MISIONES DEL GREMIOS**

### **Tipos de Misiones Generadas:**

|Tipo|Descripción|Recompensa|Impacto Económico|
|---|---|---|---|
|**Abastecimiento**|Llevar bienes a hold con escasez|Oro + reputación|+0.2 supply en destino|
|**Monopolio**|Comprar todo un producto específico|Oro alto|-0.3 supply temporal|
|**Competencia**|Sabotear comerciante rival|Oro + información|Varía|
|**Investigación**|Descubrir nueva fuente de bienes|Oro + acceso exclusivo|+0.1 supply permanente|
|**Caravana**|Escoltar caravanas entre holds|Oro + descuentos|Seguridad en rutas|
|**Especulación**|Comprar barato, vender caro|Margen de ganancia|Demuestra sistema|