# Variables Globales

>> Miscelaneus > Global

1. Nombre: `WR_CloudDistrict`
    - Type: Short
    - Value: 0

***Descripcion:***

- Control de Entrada al distrito del barrio noble Cloud (Nube) , sube su valor cuando el player cumpla los requisitos con el collar del gremio

1. Nombre: ```WR_DistrictEntrance```
    - Type: Short
    - Value: 0

***Descripcion: Asignacion de entrada a los distritos de momento se debera preguntar al Comandante Caius para su acceso***

- 0 : outskirts `De momento sin uso`
- 1 : Comercial District `Sin uso`
- 2 : Noble District `Cloud District`
- 3 : Dragonreach `Escenario Especial`
- 4 : Especial Entrance `cuando se encuentre activa la quest de helguen`

## Trigger

`Sin Uso de momento`
>> WorldObject > Activator ( Para el activador principal, en Render Windows se utiliza References )

1. Reference Editor ID: ```WR_ComercialDistrictEntrance```

   Base object: WR_ComercialDistrictTrigger

**Script:**

- <a href="Whiterun/Scripts/WR_ComercialDistrictTriggerSC.psc">WR_ComercialDistrictTriggerSC.psc</a>

- Se debe crear un triggerbox con un collision para mas facilidad interponer una barrera fisica que luego se podra abrir con una llave (`New Static Object`)

## Quest

>> Quest

**Descripcion:**

``Quest para activar y controlar la entrada a los distritos en Whiterun , cada Stage va a representar un distrito diferente``

1. Quest Name : `WR_DistrictManeger`

#### Quest Stages

- 0:Inicio de la quest al cargar whiterun

  - Aqui bloquee la puerta `WhiterunGate.Lock(true)`
  - Asigne una condition para que se cargara esta stage `Condition: IsLocationLoaded Location:Whiterun location == 1.0`

- 10:

  - Stage que otorga entrada a el distrito Comercial
  - Le di un papyrus fragment `; Disable player controls (movement & combat) - quest/dialogue must re-enable later Game.DisablePlayerControls(true, true)`

- 20:
  - Stage para controlar la entrada al distrito Noble (Cloud District)
  - Vincularlo a una quest con el Comandante Caius este otorgara misiones para elevar la reputacion del player en la ciudad, luego de que cumpla ciertos requisitos se le otorgara permisos para entrar al Distrito

- 30:
  - Vacio de Momento

<label><strong>Quest Aliases</strong><label>

- WhiterunGate
  - Aqui asigne como <code> Specific Object Reference: WR_ComercialDistrictEntrance</code> y como propiedad en el <code> Trigger type = 3 </code>

<label><strong>Quest dialogue</strong></label>

- WR_DistrictManagerDialogue
  - Aqui cree un topic branch
    - WR_DistrictManagerDialogueStop
      - WR_DistrictManagerTopic1
        - Conditions: `GetGlobalvalue Global:WR_ComercialDistrict == 0 ; GetStageDone Quest:WR_DistrictManager(10) == 1; GetIsID Actor:GuardWhiterunImperialGate ==1`

<label><strong>Scripts</strong></label>

Script manager para la quest

```Scriptname WR_DistrictManagerScript extends Quest  

;== PROPERTIES (asignar en CK) ==
GlobalVariable Property WR_ComercialDistrict Auto  ; >=1 permite paso
ObjectReference Property WhiterunGate Auto            ; Puerta principal, para bloquear/desbloquear
Float Property FallbackEnableTimeout = 15.0 Auto      ; Seguridad: tiempo m�ximo para fallback
Bool Property bDebug = True Auto

;== ESTADO INTERNO ==
Bool Property bPlayerControlsDisabled = False Auto

;== AL ARRANCAR ALGO (opcional para debug/testing) ==
Event OnInit()
    If bDebug
        Debug.Trace("WhiterunComercialDistrictEntranceST: OnInit")
    EndIf
EndEvent

;== REACCIONA A STAGE CAMBIADA (trigger llama SetStage(10)) ==
Event OnStageSet(int aiNewStage)
    If bDebug
        Debug.Trace("DistrictEntranceQuest: OnStageSet " + aiNewStage)
    EndIf

    If aiNewStage == 10
        ; Si el permiso ya se concedi�, abre y devuelve el control (no repite control)
        If WR_ComercialDistrict.GetValue() >= 1.0
            AllowEntry()
        Else
            BlockPlayerAndGate()
        EndIf
    EndIf
EndEvent

;== BLOQUEA JUGADOR Y PUERTA, Y (OPCIONAL) INICIA DI�LOGO/AI GUARDIA ==
Function BlockPlayerAndGate()
    If bDebug
        Debug.Notification("Bloqueando controles y puerta de entrada.")
    EndIf

    If WhiterunGate
        WhiterunGate.Lock(true)
    EndIf

    Game.DisablePlayerControls(true, true)
    bPlayerControlsDisabled = True

    ; El guardia puede iniciar ForceGreet v�a AI Package
    ; El di�logo te encargas de iniciarlo v�a AI Package o fragmento adicional seg�n necesidad

    ; Fallback de seguridad despu�s de X segundos
    Utility.Wait(0.5) ; Peque�a espera para fiabilidad antes de lanzar fallback
    StartFallbackEnable()
EndFunction

;== PERMITE PASO: DESBLOQUEA PUERTA Y DEVUELVE CONTROL ==
Function AllowEntry()
    If WhiterunGate
        WhiterunGate.Lock(false)
    EndIf
    If bPlayerControlsDisabled
        Game.EnablePlayerControls(false, true)
        bPlayerControlsDisabled = False
    EndIf
    If bDebug
        Debug.Notification("Permiso concedido: puerta abierta y controles restaurados.")
        Debug.Trace("DistrictEntranceQuest: AllowEntry ejecutado.")
    EndIf
    ; Aqu� puedes subir la global si quieres marcar que ya entr�
    ; WhiterunDistrictEntrance.SetValue(1.0)
EndFunction

;== NIEGA PASO: PUERTA SIGUE BLOQUEADA, PERO DA CONTROL AL PLAYER ==
Function DenyEntry()
    If WhiterunGate
        WhiterunGate.Lock(true)
    EndIf
    If bPlayerControlsDisabled
        Game.EnablePlayerControls(false, true)
        bPlayerControlsDisabled = False
    EndIf
    If bDebug
        Debug.Notification("Acceso denegado, puerta cerrada, controles restaurados.")
        Debug.Trace("DistrictEntranceQuest: DenyEntry ejecutado.")
    EndIf
EndFunction

;== SEGURIDAD: SI DIALOG NO RESTAURA CONTROL, ESTE TIMER LO HACE ==
Function StartFallbackEnable()
    Utility.Wait(FallbackEnableTimeout)
    If bPlayerControlsDisabled
        Game.EnablePlayerControls(false, true)
        bPlayerControlsDisabled = False
        If bDebug
            Debug.Trace("Fallback: controles restaurados tras timeout.")
            Debug.Notification("Controles restaurados por seguridad (fallback).")
        EndIf
    EndIf
EndFunction

;== LLAMAR ESTO DESDE FRAGMENTOS DE DIALOGO PARA PERMITIR O NEGAR ==
Function OnDialogueDecision(bool pAllow)
    If pAllow
        AllowEntry()
    Else
        DenyEntry()
    EndIf
EndFunction
```

- En las Properties le di a `WhiterunGate` asignado a la `WRDoorMain01`

# Packages

- Cree un nuevo paquete con `ForceGreet` de base apunte al topic1 de mi Quest y le di como condition `WR_ComercialDistrict == 0.0`


SISTEMA DE RECURSOS BASE
Categorías de materiales:
P (Pesado): Minerales, madera, piedra (transporte lento, carretas)
L (Ligero): Alimentos, textiles, pociones (mochilas, caballos)
P (Perecedero): Comida fresca, hierbas (se estropea en 7 días juego)
E (Estratégico): Armas, armaduras, objetos mágicos (alto valor)
REINO 1: HAAFINGAR (Solitude)
Especialización: Comercio marítimo, importación/exportación, artesanía de lujo

Recursos locales:
Pescado (Perecedero) – Costas abundantes
Madera de pino (Pesado) – Bosques de pino
Plata (Pesado) – Minas limitadas (importación principal)
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Armadura de placas imperial	Hierro importado + Cuero	Forja avanzada	500-800 septims
Joyería fina	Plata + Gemas	Orfebrería	200-2000 septims
Salazones	Pescado + Sal de Hjaalmarch	Secado	15-40 septims
Vino alto	Uvas importadas	Fermentación	50-120 septims
Dependencias: Hierro (The Pale), Sal (Hjaalmarch), Granos (Whiterun)

REINO 2: EASTMARCH (Windhelm)
Especialización: Minería de ébano, herrería nórdica, caza de mamuts

Recursos locales:
Mineral de ébano (Estratégico/Pesado) – Minas de Gloombound
Cuero robusto (Ligero) – Mamuts, osos, lobos
Carbón (Pesado) – Minas subterráneas
Hielo eterno (Estratégico) – Cuevas glaciares
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Armas de ébano	Ébano + Carbón	Forja nórdica ancestral	1500-3000 septims
Armadura de cuero endurecido	Cuero de mamut + Resina	Curtido	300-600 septims
Hielo destilado	Hielo eterno + Magia	Alquimia	80-200 septims
Carne seca de mamut	Carne + Sal	Curado	10-25 septims
Dependencias: Sal (Hjaalmarch), Hierro común (The Pale), Cereales (Whiterun)
REINO 3: THE REACH (Markarth)
Especialización: Plata, arquitectura dwemer, forja de armas ligeras

Recursos locales:
Plata pura (Pesado) – Minas de Sanuarach
Mineral de oro (Pesado/Pesado) – Minas de Kolskeggr
Piedra caliza (Pesado) – Canteras
Madera de abeto (Pesado) – Bosques altos
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Joyería de plata reach	Plata + Cuarzo	Filigrana reach	150-500 septims
Armas dwemer restauradas	Chatarra dwemer + Carbón	Arqueotecnia	800-1500 septims
Vino de sangre de dragón	Bayas silvestres + Azúcar	Fermentación	30-80 septims
Bloques de piedra	Piedra caliza	Cantero	20-50 septims
Dependencias: Carbón (Eastmarch), Alimentos (Whiterun/Falkreath)
REINO 4: THE RIFT (Riften)
Especialización: Madera de pino negro, hidromiel, agricultura de bayas

Recursos locales:
Madera de pino negro (Pesado) – Bosques densos
Miel dorada (Ligero) – Colmenas abundantes
Bayas de saúco (Perecedero) – Arboledas
Oro (Pesado) – Minas de Shor's Stone
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Hidromiel negra	Miel + Agua de manantial	Fermentación lenta	25-60 septims
Arcos de pino negro	Madera + Tendones de ciervo	Arquería	150-400 septims
Poción de resistencia al veneno	Bayas de saúco + Raíz de nirn	Alquimia	120-250 septims
Anillos de oro rift	Oro + Ámbar	Joyería	200-800 septims
Dependencias: Hierro (para herramientas), Sal (conservación), Armas (defensa)
REINO 5: WHITERUN (Whiterun)
Especialización: Cereales, cría de caballos, centro comercial

Recursos locales:
Trigo (Perecedero/Ligero) – Llanuras fértiles
Cebada (Ligero) – Granjas extensas
Caballos (Estratégico) – Criadores de Battle-Born
Arcilla (Pesado) – Depósitos fluviales
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Harina de trigo	Trigo	Molino	5-15 septims
Pan de Whiterun	Harina + Levadura + Agua	Panadería	2-8 septims
Cerveza de cebada	Cebada + Lúpulo	Cervecería	10-25 septims
Ceramica común	Arcilla + Leña	Alfarería	5-20 septims
Caballos de guerra	Cría selectiva	Entrenamiento	1000-2500 septims
Dependencias: Hierro (herramientas), Madera (construcción), Armas (defensa)
REINO 6: FALKREATH (Falkreath)
Especialización: Madera de cedro, caza, talla de hueso

Recursos locales:
Madera de cedro (Pesado) – Bosques ancestrales
Cuero de bestias (Ligero) – Ciervos, osos, alces
Hueso de mamut (Pesado) – Yacimientos fósiles
Hongos del bosque (Perecedero) – Suelo forestal
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Arcos de cedro tallado	Madera + Tripa	Arquería fina	200-500 septims
Arrows de hueso	Hueso + Pluma	Fletchado	1-3 septims/unidad
Cuero curtido de Falkreath	Cuero + Corteza	Curtido natural	50-120 septims
Pociones de resistencia	Hongos + Raíces	Alquimia	80-180 septims
Dependencias: Hierro (puntas de flecha), Sal (curtido), Cereales (alimentación)
REINO 7: THE PALE (Dawnstar)
Especialización: Hierro, sal marina, pesca de aguas frías

Recursos locales:
Mineral de hierro (Pesado) – Minas de Dawnstar
Sal marina (Ligero) – Evaporación natural
Bacalao glacial (Perecedero) – Aguas heladas
Hielo compacto (Pesado) – Glaciares
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Lingotes de hierro	Mineral + Carbón	Fundición	20-50 septims
Sal de conservación	Agua de mar	Evaporación	3-10 septims
Pescado seco	Bacalao + Sal	Secado al viento	8-20 septims
Neveras de hielo	Hielo + Paja	Almacenamiento	15-40 septims
Dependencias: Carbón (Eastmarch), Madera (construcción), Cereales (alimentos)
REINO 8: HJAALMARCH (Morthal)
Especialización: Sal de pantano, caza de alces, alquimia oscura

Recursos locales:
Sal de pantano (Ligero) – Depósitos salinos
Musgo de piedra (Ligero) – Riscos húmedos
Alces (Perecedero) – Pantanos
Turba (Pesado) – Combustible local
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Sal de Morthal	Agua salobre	Evaporación lenta	5-15 septims
Pociones de curación	Musgo + Sal	Alquimia	60-150 septims
Cuero de alce	Piel + Ceniza	Curtido	40-100 septims
Ladrillos de turba	Turba comprimida	Secado	2-8 septims
Dependencias: Hierro (herramientas), Cereales (alimentos), Madera (construcción)
REINO 9: WINTERHOLD (Winterhold)
Especialización: Magia, cristales de hielo, erudición

Recursos locales:
Cristales de hielo mágico (Estratégico) – Formaciones glaciares
Pergaminos antiguos (Ligero) – Ruinas
Bacalao de profundidad (Perecedero) – Pesca de altura
Lana de cabra montés (Ligero) – Rebaños salvajes
Industrias:
Producto	Materia Prima	Proceso	Valor Base
Pergaminos encantados	Pergamino + Alma	Encantamiento	100-500 septims
Gemas de hielo	Cristales + Magia	Alquimia avanzada	200-800 septims
Capas de lana	Lana + Tinte	Tejido	30-80 septims
Poción de resistencia frío	Cristales + Raíz	Alquimia	150-300 septims
Dependencias: TODO (aislamiento extremo) – Mayor dependencia de comercio
SISTEMA DE FLUCTUACIÓN DE PRECIOS
Variables que afectan el mercado:
1. Eventos de Guerra (Multiplicadores de precio)
Evento	Recursos afectados	Efecto
Bloqueo de ruta	Todos los bienes de paso	+50-150%
Asedio a ciudad	Alimentos, armas, medicinas	+100-300%
Captura de mina	Minerales relacionados	+80-200%
Destrucción de granja	Cereales, alimentos	+60-150%
Piratería en costas	Bienes marítimos	+40-100%
2. Estacionalidad (Ciclo de 12 meses)
Estación	Efecto en precios
Morning Star (Enero)	Alimentos +30% (escasez invernal), Madera -20%
Sun's Dawn (Febrero)	Minerales +20% (minas inundadas), Cuero -10%
First Seed (Marzo)	Semillas -40%, Herramientas +25%
Rain's Hand (Abril)	Perecederos -30% (abundancia), Sal +20%
Second Seed (Mayo)	Caza -20%, Miel -30%
Mid Year (Junio)	Bebidas +40% (calor), Hielo +100%
Sun's Height (Julio)	Cereales -40% (cosecha), Pesca -30%
Last Seed (Agosto)	Granos -50% (cosecha principal), Trabajo +30%
Hearthfire (Septiembre)	Madera +40% (construcción), Cerámica +25%
Frostfall (Octubre)	Ropa abrigada +60%, Alimentos +20%
Sun's Dusk (Noviembre)	Carbón +50%, Pociones frío +80%
Evening Star (Diciembre)	Lujo +40% (festividades), Viajes -50%
3. Oferta Regional (Saturación)
Si un reino produce más de lo que consume:

Excedente > 20%: Precio local -30%, precio en reinos lejanos +20%
Excedente > 50%: Precio local -50%, riesgo de abandono de producción
4. Demanda de Guerra Civil
Cada reino necesita mantener ejércitos:

Ración básica: 2 panes + 1 carne seca + 1 cerveza/soldado/día
Equipo: 1 arma + 0.5 armaduras/soldado/mes (reparaciones)
Caballería: 3 cereales + 1 hierba/caballo/día
Ejemplo práctico:
Si Whiterun moviliza 500 soldados:

Demanda diaria: 1000 panes, 500 carnes, 500 cervezas
Precio local del trigo sube +80% en 3 días
Riften envía "mercaderes" con precios inflados +120%
RUTAS COMERCIALES Y PELIGROS
Rutas principales:
Ruta	Bienes transportados	Riesgo	Tiempo
Solitude-Dawnstar (costa)	Lujo, vino, sal	Bajo (mar)	2 días
Windhelm-Riften (montaña)	Ébano, cuero, armas	Alto (dragones/bandidos)	4 días
Markarth-Whiterun (paso)	Plata, joyas, oro	Medio (forsworn)	3 días
Riften-Whiterun (bosque)	Miel, madera, oro	Medio (osos)	3 días
Morthal-Solitude (pantano)	Sal, pociones, cuero	Medio (vampiros)	2 días
Falkreath-Riften (frontera)	Caza, arcos, cuero	Alto (guerra)	4 días
Tarifas de transporte (por unidad de peso):
Seguro: +20% del valor (protección mercenaria)
Caravana imperial: +10% (rutas patrulladas)
Contrabandista: -10% (riesgo de confiscación)
IMPLEMENTACIÓN EN EL MOD
Sistema de scripts sugerido:
Variables globales por reino:
- StockTrigo[Reino] = cantidad
- DemandaTrigo[Reino] = base + (población × 0.5) + (soldados × 2)
- PrecioTrigo[Reino] = (Demanda/Stock) × PrecioBase

Eventos aleatorios cada 7 días:
- 10% probabilidad: Mal cosecha (-30% stock granos)
- 5% probabilidad: Ataque a caravana (bloqueo ruta 14 días)
- 15% probabilidad: Demanda militar (sube consumo 50%)
Comerciantes itinerantes:
Cada pueblo tiene un comerciante que viaja a la capital cada 3-7 días, actualizando precios según:

Precio de compra en origen
Costo de transporte (según ruta)
Impuestos de paso (cada Jarl-Rey cobra 5-15% en fronteras)
Interfaz para el jugador:
Tablón de precios: En cada posada, ver precios actuales de los 9 reinos
Oportunidades comerciales: Si detectas desequilibrio (trigo barato en Whiterun, caro en Winterhold), marcador de misión
Inversión: Puedes comprar "acciones" de producción en granjas/minas, recibir dividendos semanales

ESTRUCTURA DE SUBCLASES
Cada personaje puede tener hasta 2 profesiones principales + 3 secundarias. Las profesiones suben de nivel 1-300 (sistema clásico) o 1-100 (moderno).

1. MINERÍA (Gathering + Crafting híbrido)
Sistema de Picos (Core mechanic):
Pico	Material requerido	Nivel Minería	Minerales accesibles	Durabilidad
Pico de cobre	12 cobre + 4 madera	1	Cobre, estaño, piedra común	40 usos
Pico de hierro	15 hierro + 6 cuero + Pico cobre	25	Hierro, plomo, zinc, cobre avanzado	80 usos
Pico de acero	20 acero + 10 cuero curtido + 5 carbón	50	Acero, plata, oro bajo, hierro denso	120 usos
Pico de oricalco	15 oricalco + 20 acero + 10 fuego élfico	100	Oricalco, oro rico, platino, gemas brutas	200 usos
Pico de ébano	10 ébano + 15 cuero de dragón + Alma menor	150	Ébano, malacita, cristales de alma	300 usos
Pico de daedra	5 lingotes daedra + 20 ébano + Alma mayor	200	Daedrita, meteoritos, minerales oblivion	500 usos
Pico de dragonbone	1 hueso de dragón antiguo + 50 ébano + Alma de dragón	250	Hueso fósil, cristales de alma negros, ébano puro	Ilimitada
Mecánica de minerales ocultos:
Los filones tienen dureza (1-7)
Pico con menor dureza = no puede extraer (mensaje: "Necesitas un pico mejor")
Pico con mayor dureza = +20% de mineral extraído, pero -10% durabilidad
Niveles de Minería y desbloqueos:
Aprendiz (1-75):

Filones básicos visibles en brújula
Fundición simple (2 minerales → 1 lingote)
Capacidad: reparar picos en yunque
Oficial (75-150):

Detectar filones ocultos (brillo tenue en paredes)
Fundición eficiente (1.5 minerales → 1 lingote)
Desbloqueo: Picos con encantamientos menores
Capacidad: Extraer gemas brutas sin romperlas
Experto (150-225):

Prospector: Ver a través de roca superficial (30% probabilidad filón oculto)
Fundición avanzada (1 mineral rico → 1.2 lingotes)
Desbloqueo: Picos de ébano, minería de almas
Capacidad: Colocar dinamita (destruye 3×3, pierde 50% materiales)
Artesano (225-300):

Maestro geólogo: Mapa de filones en zona
Fundición perfecta (sin pérdida, posibilidad de lingote extra)
Desbloqueo: Pico daedra, minería en planos de Oblivion
Capacidad: Fundir armaduras/enemigos mecánicos en minerales
2. HERRERÍA (Crafting de armas/armaduras)
Herramientas requeridas:
Herramienta	Nivel	Función	Requisito de taller
Yunque portátil	1	Reparaciones básicas, fundición cobre	Ninguno (inventario)
Yunque de hierro	25	Forja armas hierro, acero básico	Requiere horno
Mandril de acero	50	Forja acero, reparaciones complejas	Yunque + horno + agua
Forja élfica	100	Aleaciones especiales, acero lunar	Taller completo
Yunque dwemer	150	Restaurar tecnología dwemer, oricalco	Ruinas dwemer o piezas importadas
Forja ébano	200	Trabajar ébano, acero de escarcha	Caldera de magma o fuego eterno
Forja daedra	250	Forjar daedra, requiere sacrificios	Altar de Oblivion o corazón de daedra
Progresión de Herrería:
Herrero Aprendiz (1-75):

Armas de cobre, hierro básico
Reparaciones: recupera 25% durabilidad
Desbloqueos: Dagas, espadas cortas, clavas
Herrero Journeyman (75-150):

Armas de acero, hierro de calidad
Reparaciones: 50% durabilidad, posibilidad de mejora
Desbloqueos: Espadas largas, hachas, armaduras ligeras
Habilidad: Afilar (daño +10% por 24 horas)
Herrero Oficial (150-225):

Armas de plata, oro (decorativas pero encantables), acero lunar
Reparaciones: 75% durabilidad, mejora permanente +20%
Desbloqueos: Armaduras medias, escudos, armas a dos manos
Habilidad: Temple (armadura +15% por 24 horas)
Maestro Herrero (225-300):

Ébano, acero de escarcha, oricalco
Reparaciones: 100% + mejora legendaria
Desbloqueos: Armaduras pesadas, armas épicas, mejoras elementales
Habilidad: Forja legendaria (nombra armas, bonus únicos)
3. JOYERÍA (Gemas + Metales preciosos)
Herramientas:
Herramienta	Nivel	Funciones desbloqueadas
Kit de joyero básico	1	Cortar gemas brutas, montar plata
Torno de joyería	50	Tallado complejo, engarces, oro
Mesa de lapidario	100	Gemas mágicas, facetado, platino
Crisol de joyero	150	Aleaciones preciosas, gemas de alma
Banco de enchufes	200	Múltiples gemas, joyas artifact
Progresión:
Joyero Aprendiz (1-75):

Gemas brutas → cortadas (efecto mágico básico)
Anillos sencillos de plata
Collares básicos
Joyero Oficial (75-150):

Gemas mágicas (resistencia fuego, hielo)
Anillos de oro con engarces
Amuletos con bonus de atributo
Joyero Experto (150-225):

Gemas de alma menores en joyas
Tiaras, coronas (encantamientos mayores)
Joyas con múltiples propiedades
Maestro Joyero (225-300):

Gemas de alma mayores
Joyas únicas (misiones de creación)
Posibilidad de crear "gema de alma negra" (1 vez)
4. ALQUIMIA (Pociones + Venenos)
Herramientas de recolección y elaboración:
Herramienta	Nivel	Función
Cuchillo de hierba	1	Recolectar hierbas básicas (sin destruir)
Mortero de piedra	1	Moler 1 ingrediente/poción
Cuchillo de ébano	50	Recolectar hierbas raras, raíces profundas
Mortero de hierro	50	Moler 2 ingredientes, extracción 20% mejor
Cuchillo de alquimista	100	Recolectar sin daño, esporas, hongos venenosos
Retorta de vidrio	100	Destilación, pociones duraderas
Cuchillo daedra	150	Recolectar ingredientes mágicos, sangre de daedra
Laboratorio portátil	150	Crear pociones en campo (5 usos)
Cuchillo de dragonbone	200	Ingredientes legendarios, escamas de dragón
Alambique élfico	200	Triple ingrediente, pociones maestras
Progresión Alquimia:
Aprendiz (1-75):

Pociones de salud/magia/estamina básicas
Venenos de daño simple
Identificación de ingredientes (prueba y error)
Oficial (75-150):

Pociones de resistencia elemental
Venenos complejos (parálisis, miedo)
Extracción de efectos múltiples
Experto (150-225):

Pociones de regeneración
Venenos letales
Transmutación de ingredientes
Maestro (225-300):

Pociones únicas (invisibilidad prolongada, resistencia total)
Venenos que afectan a no-muertos/constructos
Posibilidad de crear "piedra filosofal" (1 uso, transmuta oro)
5. ENCANTAMIENTO
Herramientas:
Herramienta	Nivel	Función
Piedra de afilar arcana	1	Desencantar objetos básicos
Varita de canalización	50	Transferir encantamientos menores
Círculo de vinculación	100	Encantar armaduras, armas
Crisol de almas	150	Comprimir gemas de alma, encantamientos mayores
Obelisco de vinculación	200	Encantamientos permanentes, objetos artifact
6. PELETERÍA / CURTIDO
Herramientas:
Herramienta	Nivel	Función
Cuchillo de desuelle	1	Obtener cuero de animales pequeños
Marco de curtido	25	Curtir pieles básicas
Cuchillo de cazador	50	Cuero de animales medianos, sin daño
Baño de tanino	75	Curtido avanzado, pieles resistentes
Cuchillo de maestro	100	Dragones, gigantes, animales mágicos
Taller de cuero	125	Armaduras de cuero élfico, endurecido
7. CARPINTERÍA / LEÑADOR
Herramientas (Hachas específicas):
Hacha	Nivel	Madera accesible	Uso
Hacha de cobre	1	Madera común, leña	Leña, palos
Hacha de hierro	25	Roble, pino	Construcción básica
Hacha de acero	50	Abeto, cedro	Arcos, muebles
Hacha élfica	100	Madera élfica	Armas élficas, estructuras
Hacha de ébano	150	Ébano	Armas élficas oscuras
Hacha daedra	200	Madera viva, heartwood	Objetos mágicos, staves
SISTEMA DE SINERGIA ENTRE PROFESIONES
Cadenas de producción completas:
Espada de Ébano Legendaria:

Minero (pico de ébano) → extrae ébano bruto
Herrero (forja ébano) → funde lingotes
Encantador (círculo de vinculación) → añade encantamiento
Joyero (torno) → engasta gema de alma en empuñadura
Herrero Maestro → nombra la espada, bonus único
Poción de Resistencia Total:

Leñador (hacha de acero) → obtiene madera de abeto rara
Alquimista (cuchillo de alquimista) → recolecta raíz de nirn sin dañar
Minero (pico de oricalco) → extrae polvo de cristal
Alquimista Experto (alambique) → elabora poción triple
MECÁNICA DE REQUISITOS Y DESBLOQUEO
Sistema de "Recetas descubiertas":
Cada objeto tiene 3 formas de desbloqueo:

Aprender: Comprar/libro/misión (100% conocimiento)
Experimentar: Combinar materiales correctos sin saber (50% éxito, 50% materiales perdidos)
Inspiración: Al subir de nivel, chance de "descubrir" receta aleatoria del nivel anterior
Requisitos de taller:
Para trabajar materiales avanzados, necesitas instalaciones:

Nivel	Instalación básica	Instalación avanzada	Instalación maestra
1-75	Yunque portátil	-	-
75-150	Horno de campo	Yunque estable	-
150-225	Taller completo	Forja élfica	Agua bendita
225-300	Forja élfica	Forja ébano	Corazón de Oblivion
PROGRESIÓN DEL JUGADOR - EJEMPLO PRÁCTICO
Fase 1 (Nivel 1-25):

Craftear pico de cobre → minar cobre → fundir → hacer hacha de cobre → talar madera
Vender materiales básicos para oro
Fase 2 (Nivel 25-75):

Pico de hierro → minar hierro y plata
Aprender herrería → hacer armas hierro básicas
Subir herrería a 50 → desbloquear yunque de acero
Fase 3 (Nivel 75-150):

Craftear pico de acero → acceso a oro y oricalco
Forjar armas de acero (mejores que las del juego base)
Especializarse: ¿Ébano (daño) o Acero Lunar (velocidad)?
Fase 4 (Nivel 150-225):

Pico de ébano → minar ébano
Forja élfica/dwemer para aleaciones
Crear armas personalizadas con nombre y historia
Fase 5 (Nivel 225-300):

Pico daedra → materiales oblivion
Forja daedra en altares
Armas legendarias con múltiples propiedades

