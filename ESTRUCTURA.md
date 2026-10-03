# Guía de Estructura del Proyecto - SkyrimProyectMod

## Descripción de la Organización

Este documento explica la estructura completa del repositorio y cómo navegar por él.

---

## Estructura de Carpetas

```
SkyrimProyectMod/
│
├── 📄 README.md                          (Presentación del proyecto)
├── 📄 INDEX.md                           (Índice general - este doc)
├── 📄 TRACKING.md                        (Registro de cambios y decisiones)
├── 📄 CONTRIBUTING.md                    (Guía de contribución)
│
├── 📁 0_SISTEMAS_GLOBALES/               (Cambios globales y sistemas base)
│   ├── 📄 00_Sistema_Progresion.md       (Atributos + Habilidades orgánicas)
│   ├── 📄 01_Sistema_Perks_Hardcore.md   (Perks con requisitos tiempo real)
│   ├── 📄 02_Economia_Dinamica.md        (Precios, mercados, fluctuaciones)
│   ├── 📄 03_Subclases.md                (Profesiones y especializaciones)
│   ├── 📄 04_Gremios_Globales.md         (Facciones: Aventureros, Comerciantes, Mercado Negro)
│   ├── 📄 05_Timeline_Global.md          (Calendario y eventos globales)
│   └── 📄 06_Cambios_Vanilla.md          (Modificaciones a sistemas vanilla)
│
├── 📁 1_QUESTS_PRINCIPALES/              (Quest line principal)
│   ├── 📄 00_Testigo_de_Helgen.md        (Intro - 5 ramas de diálogo)
│   ├── 📄 01_Elegido_de_Akatosh.md       (Varen Aquilaris - 8 actos, 3 finales)
│   ├── 📄 02_Garra_del_Dragon.md         (Timeline y batalla dragón - Whiterun)
│   ├── 📄 03_Busqueda_Artefactos.md      (Post-Helgen, búsqueda de conocimiento)
│   └── 📁 Dialogos/                      (Archivos de diálogo por NPC)
│       ├── dialogo_Balgruuf.md
│       ├── dialogo_Irileth.md
│       ├── dialogo_Varen.md
│       └── ...
│
├── 📁 2_CIUDADES_PRINCIPALES/            (Una carpeta por ciudad + sus poblados)
│
│   ├── 📁 Whiterun/                      (Centro comercial, posición central)
│   │   ├── 📄 00_Guia_Ciudad.md          (Cambios visuales, estructura, distritos)
│   │   ├── 📄 01_Economia_Local.md       (Precios, comerciantes, producción)
│   │   ├── 📄 02_Quests_Secundarias.md   (Side-quests específicas de Whiterun)
│   │   ├── 📄 03_Facciones_Locales.md    (Gremios, familias, NPCs importantes)
│   │   ├── 📁 Poblados/
│   │   │   ├── 📄 Riverwood.md
│   │   │   ├── 📄 Rorikstead.md
│   │   │   ├── 📄 Dragon_Bridge.md
│   │   │   └── 📄 Battle_Born_Farm.md
│   │   ├── 📁 Distritos/                 (Barrios de Whiterun)
│   │   │   ├── 📄 District_Comercial.md
│   │   │   ├── 📄 District_Noble.md
│   │   │   └── 📄 District_Pobre.md
│   │   ├── 📁 Scripts/
│   │   │   ├── WR_ComercialDistrictTriggerSC.psc
│   │   │   ├── WR_DistrictManager.psc
│   │   │   └── ...
│   │   └── 📁 Imagenes/                  (Referentes visuales, mapas)
│   │
│   ├── 📁 Solitude/                      (Capital: comercio, imperio, lujo)
│   │   ├── 📄 00_Guia_Ciudad.md
│   │   ├── 📄 01_Economia_Local.md
│   │   ├── 📄 02_Quests_Secundarias.md
│   │   ├── 📄 03_Facciones_Locales.md
│   │   ├── 📁 Poblados/
│   │   │   ├── 📄 Dragon_Bridge.md
│   │   │   ├── 📄 Solitude_Docks.md
│   │   │   └── ...
│   │   ├── 📁 Distritos/
│   │   └── 📁 Scripts/
│   │
│   ├── 📁 Windhelm/                      (Minería ébano, cultura nórdica)
│   │   ├── 📄 00_Guia_Ciudad.md
│   │   ├── 📄 01_Economia_Local.md
│   │   ├── 📄 02_Quests_Secundarias.md
│   │   ├── 📄 03_Facciones_Locales.md
│   │   ├── 📁 Poblados/
│   │   ├── 📁 Distritos/
│   │   └── 📁 Scripts/
│   │
│   ├── 📁 Markarth/                      (Plata, dwemer, conflictos Forsworn)
│   │   ├── 📄 00_Guia_Ciudad.md
│   │   ├── 📄 01_Economia_Local.md
│   │   ├── 📄 02_Quests_Secundarias.md
│   │   ├── 📄 03_Facciones_Locales.md
│   │   ├── 📁 Poblados/
│   │   ├── 📁 Distritos/
│   │   └── 📁 Scripts/
│   │
│   ├── 📁 Riften/                        (Bosques, contrabando, gremio ladrones)
│   │   ├── 📄 00_Guia_Ciudad.md
│   │   ├── 📄 01_Economia_Local.md
│   │   ├── 📄 02_Quests_Secundarias.md
│   │   ├── 📄 03_Facciones_Locales.md
│   │   ├── 📁 Poblados/
│   │   ├── 📁 Distritos/
│   │   └── 📁 Scripts/
│   │
│   ├── 📁 Falkreath/                     (Madera, caza, cementerios)
│   │   ├── 📄 00_Guia_Ciudad.md
│   │   ├── 📄 01_Economia_Local.md
│   │   ├── 📄 02_Quests_Secundarias.md
│   │   ├── 📄 03_Facciones_Locales.md
│   │   ├── 📁 Poblados/
│   │   ├── 📁 Distritos/
│   │   └── 📁 Scripts/
│   │
│   ├── 📁 Dawnstar/                      (The Pale - Hierro, puerto helado)
│   │   ├── 📄 00_Guia_Ciudad.md
│   │   ├── 📄 01_Economia_Local.md
│   │   ├── 📄 02_Quests_Secundarias.md
│   │   ├── 📄 03_Facciones_Locales.md
│   │   ├── 📁 Poblados/
│   │   ├── 📁 Distritos/
│   │   └── 📁 Scripts/
│   │
│   ├── 📁 Morthal/                       (Hjaalmarch - Pantanos, sal, misterio)
│   │   ├── 📄 00_Guia_Ciudad.md
│   │   ├── 📄 01_Economia_Local.md
│   │   ├── 📄 02_Quests_Secundarias.md
│   │   ├── 📄 03_Facciones_Locales.md
│   │   ├── 📁 Poblados/
│   │   ├── 📁 Distritos/
│   │   └── 📁 Scripts/
│   │
│   └── 📁 Winterhold/                    (Magia, colegio, aislamiento)
│       ├── 📄 00_Guia_Ciudad.md
│       ├── 📄 01_Economia_Local.md
│       ├── 📄 02_Quests_Secundarias.md
│       ├── 📄 03_Facciones_Locales.md
│       ├── 📁 Poblados/
│       ├── 📁 Distritos/
│       └── 📁 Scripts/
│
├── 📁 3_FACCIONES_GREMIOS/               (Organizaciones globales)
│   ├── 📄 Gremio_Aventureros.md          (Sistema de fama, misiones)
│   ├── 📄 Gremio_Comerciantes.md         (Control economía, ganancias)
│   ├── 📄 Mercado_Negro.md               (Contrabando, operaciones ocultas)
│   └── 📄 Blades_Restaurados.md          (Línea de Varen, restauración)
│
├── 📁 4_SISTEMAS_SECUNDARIOS/            (Mecánicas adicionales)
│   ├── 📄 Sistema_Reputacion.md          (Cómo funciona la reputación por ciudad)
│   ├── 📄 Sistema_Eventos.md             (Eventos aleatorios y dinámicos)
│   ├── 📄 Sistema_Alianzas.md            (Relaciones entre facciones)
│   └── 📄 Sistema_Vivienda.md            (Compra y construcción de casas)
│
├── 📁 5_REFERENCIAS_EXTERNAS/            (Documentos de soporte)
│   ├── 📄 Personajes_NPCs.md             (Base de datos de NPCs importantes)
│   ├── 📄 Items_Unicos.md                (Armas, armaduras, artefactos únicos)
│   ├── 📄 Criaturas_Enemigos.md          (Bestiario de criaturas nuevas)
│   └── 📄 Localizaciones_Interiores.md   (Cuevas, ruinas, interiores)
│
└── 📁 ARCHIVO/                           (Documentos obsoletos o en espera)
    └── transcribir.txt                   (Contenido sin procesar - referencia)

```

---

## Convenciones de Nombres

### Carpetas
- **Nombres en PascalCase**: `Whiterun/`, `2_CIUDADES_PRINCIPALES/`
- **Números para orden**: `0_SISTEMAS_GLOBALES/`, `1_QUESTS_PRINCIPALES/`
- **Descriptivos y claros**: `Poblados/`, `Distritos/`, `Scripts/`

### Archivos .md
- **Numeración para orden**: `00_`, `01_`, `02_` (dentro de carpeta)
- **Nombres descriptivos**: `Sistema_Progresion.md`, `Economia_Local.md`
- **Snake_case con guiones**: `Garra_del_Dragon.md`

### Scripts Papyrus
- **Prefijo de ubicación**: `WR_` = Whiterun, `SOL_` = Solitude, etc.
- **Nombre descriptivo**: `WR_DistrictManager.psc`
- **Convención Papyrus**: CamelCase con guiones bajos

---

## Navegación por Carpeta

### 📁 0_SISTEMAS_GLOBALES/
**Uso:** Cambios que afectan a TODO Skyrim, no solo a una ciudad.

- `00_Sistema_Progresion.md` - ¿Cómo crecen los atributos?
- `01_Sistema_Perks_Hardcore.md` - ¿Qué requisitos tienen los perks?
- `02_Economia_Dinamica.md` - ¿Cómo funcionan los precios?
- `03_Subclases.md` - ¿Qué profesiones hay?
- `04_Gremios_Globales.md` - ¿Qué facciones afectan el mundo entero?
- `05_Timeline_Global.md` - ¿Qué eventos ocurren globalmente?

**Cuando editar aquí:**
- Cambios que impacten todas las ciudades
- Reglas de sistemas que afectan el mundo completo
- Fórmulas y cálculos globales

---

### 📁 1_QUESTS_PRINCIPALES/
**Uso:** La línea de quests principal (el storyline del mod).

- `00_Testigo_de_Helgen.md` - Intro del juego
- `01_Elegido_de_Akatosh.md` - Varen y la verdad de los dragones
- `02_Garra_del_Dragon.md` - Batalla en Whiterun y consecuencias

**Cuando editar aquí:**
- Diálogos de la quest principal
- Eventos principales del storyline
- NPCs críticos para la trama

---

### 📁 2_CIUDADES_PRINCIPALES/
**Uso:** Una carpeta por cada ciudad capital de Skyrim.

Cada carpeta de ciudad tiene:
- `00_Guia_Ciudad.md` - Visión general, cambios visuales
- `01_Economia_Local.md` - Precios específicos, producción local
- `02_Quests_Secundarias.md` - Misiones de esa ciudad
- `03_Facciones_Locales.md` - NPCs, familias, facciones locales
- `Poblados/` - Asentamientos bajo control de esa ciudad
- `Distritos/` - Barrios/distritos de la capital (si aplica)
- `Scripts/` - Scripts Papyrus específicos

**Cuando editar aquí:**
- Información específica de una ciudad
- Quests que ocurren en esa ciudad
- NPCs locales
- Economía regional

---

### 📁 2_CIUDADES_PRINCIPALES/Whiterun/Poblados/
**Ejemplo:** Cómo documentar un poblado bajo una ciudad.

```
Riverwood.md
├── Descripción y ubicación
├── NPCs principales
├── Quests específicas de Riverwood
├── Economía local (qué se produce/vende)
├── Conexión con Whiterun
└── Eventos especiales
```

Cada poblado es **independiente pero vinculado** a su ciudad capital.

---

### 📁 3_FACCIONES_GREMIOS/
**Uso:** Organizaciones que operan en múltiples ciudades.

- `Gremio_Aventureros.md` - Niveles de fama, misiones
- `Gremio_Comerciantes.md` - Control de economía global
- `Mercado_Negro.md` - Red de contrabando
- `Blades_Restaurados.md` - La línea de Varen

**Cuando editar aquí:**
- Reglas de facciones globales
- Cómo funcionan en todas las ciudades
- Quests de facciones

---

### 📁 4_SISTEMAS_SECUNDARIOS/
**Uso:** Mecánicas que cruzan múltiples sistemas.

- Reputación (cómo afecta tu relación con ciudades)
- Eventos (qué ocurre si no actúas)
- Alianzas (relaciones entre facciones)
- Vivienda (dónde vivir, qué construir)

---

### 📁 5_REFERENCIAS_EXTERNAS/
**Uso:** Bases de datos y referencias.

- `Personajes_NPCs.md` - Lista de todos los NPCs con fichas
- `Items_Unicos.md` - Armas y artefactos especiales
- `Criaturas_Enemigos.md` - Bestiario completo
- `Localizaciones_Interiores.md` - Cuevas, ruinas, mazmorras

**Cuándo consultar aquí:**
- Necesitas info de un NPC específico
- Buscas un objeto único
- Quieres detalles de una localización

---

## Cómo Buscar Información

### ¿Dónde está X?

| Pregunta | Busca en |
|----------|----------|
| ¿Cómo funcionan los atributos? | `0_SISTEMAS_GLOBALES/00_Sistema_Progresion.md` |
| ¿Qué requisitos tiene el perk X? | `0_SISTEMAS_GLOBALES/01_Sistema_Perks_Hardcore.md` |
| ¿Cuál es el precio del hierro en Whiterun? | `2_CIUDADES_PRINCIPALES/Whiterun/01_Economia_Local.md` |
| ¿Quién es el Jarl de Windhelm? | `2_CIUDADES_PRINCIPALES/Windhelm/03_Facciones_Locales.md` |
| ¿Dónde está Riverwood? | `2_CIUDADES_PRINCIPALES/Whiterun/Poblados/Riverwood.md` |
| ¿Cuál es la misión del Gremio de Aventureros? | `3_FACCIONES_GREMIOS/Gremio_Aventureros.md` |
| ¿Quién es Varen? | `1_QUESTS_PRINCIPALES/01_Elegido_de_Akatosh.md` |
| ¿Cómo obtener Espada XYZ? | `5_REFERENCIAS_EXTERNAS/Items_Unicos.md` |

---

## Flujo de Trabajo Recomendado

### Sesión típica:

1. **Abrir INDEX.md** → Ver qué necesita trabajo
2. **Abrir TRACKING.md** → Registrar lo que vas a hacer
3. **Editar documento** → En la carpeta apropiada
4. **Actualizar TRACKING.md** → Registrar cambios
5. **Actualizar INDEX.md** → Cambiar estado (🔴→🟡→✅)

### Cuando creas una ciudad nueva:

1. Crear carpeta `2_CIUDADES_PRINCIPALES/NombreCiudad/`
2. Crear `00_Guia_Ciudad.md`
3. Crear `01_Economia_Local.md`
4. Crear `02_Quests_Secundarias.md`
5. Crear `03_Facciones_Locales.md`
6. Crear carpeta `Poblados/` (si hay)
7. Crear carpeta `Distritos/` (si aplica)
8. Crear carpeta `Scripts/` (si hay)
9. Actualizar `INDEX.md`
10. Añadir entrada en `TRACKING.md`

---

## Sincronización con Sistemas Globales

**Regla importante:** 
Si cambias algo en `0_SISTEMAS_GLOBALES/`, debes revisar si afecta a ciudades individuales.

Ejemplo:
- Cambias fórmula de economía en `02_Economia_Dinamica.md`
- Revisa todos los `Economia_Local.md` de cada ciudad
- Actualiza precios base si es necesario

---

## Vínculos y Referencias

Dentro de archivos .md, puedes hacer referencias así:

```markdown
Para más información sobre economía global, ver:
[Sistema Económico Global](../0_SISTEMAS_GLOBALES/02_Economia_Dinamica.md)

NPCs de Whiterun:
[Jarl Balgruuf](./03_Facciones_Locales.md#jarl-balgruuf)
```

---

**Última actualización:** 2026-10-03  
**Versión:** 1.0
