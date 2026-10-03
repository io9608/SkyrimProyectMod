# Subclases Principales del Juego

## SISTEMA DE ATRIBUTOS BASE

- Cada personaje tiene 5 atributos principales que suben automáticamente según tus acciones:

![SAB](/Imagenes/SAB.png)

BASES/PROFESIONES (Skills que suben al usar)
Cada acción da EXP a la habilidad específica + EXP de atributo vinculado.


## Mineria

- **Nombre de Variable:** GL_MiningEXP  `Sistema de experiencia para que el player pueda minar ciertos minerales , este debe ir vinculado a la posecion de herrameintas especializadas`

- **Atributo principal**: Fuerza (70%) + Resistencia (30%)

- **Acciones que dan EXP:**

  - Golpear filón: +5 EXP Minería, +2 EXP Fuerza
  - Extraer mineral: +15 EXP Minería, +5 EXP Fuerza, +3 EXP Resistencia
  - Transportar minerales pesados: +2 EXP Fuerza por minuto cargando
    - **Niveles desbloqueables:**
      - Lvl 25: Detectar filones cercanos (brillo en paredes)
      - Lvl 50: Extracción doble (20% chance)
      - Lvl 75: Minerales ricos (calidad superior automática)
      - Lvl 100: Golpe perfecto (sin perder durabilidad en pico)
      - 
- **Tipos de Picos**

  - **Pico Piedra:**
    - Crafteo: Survival
    - Materiales: 5 Piedra + 3 Madera
    - Nivel Requerido: 0
    - Extraccio:
        - Piedra
        - Arcilla
        - Hierro (filon 50% Probabilidad, mayor perdida de durabilidad )
    - Precio de venta: Ninguno
    - Encantamiento: No disponible
    - Runas : No Disponible
    - Usos: 10
    - Exp: 3xp por extraccion (5xp si filon de hierro)
    
  - **Pico de Hierro:**
    - Crafteo: Yunque de Hierro
    - Materiales: 12 hierro + 3 madera
    - Nivel Requerido: 10
    - Extraccion:
        - Piedra ( +5%, calidad alta)
        - Hierro
        - Plata ( 30% de probabilidad filon, +40% perdida de durabilidad)
        - Oro (10% de probabilidad filon, +60% de perdida de durabilidad)
      - Usos: 20
      - Exp:
        - Mineria: +5 Exp (Oro y plata +3 Exp)
      - Precio Venta: 1 septim
      - Encantamiento: No disponible
      - Runas: No disponible

  - **Pico de Acero:**
    - Crafteo: Yunque de hierro
    - Materiales: 16 Acero + 3 madera
    - Nivel Requerido: 15
    - Extraccion:
      - Piedra ( +10%, Calidad Alta)
      - Hierro (+2% velocidad )
      - Plata
      - Oro
    - Usos: 25
    - Exp: 5xp por Extraccion
    - Precio Venta: 1-5 septim
    - Encantamiento: Menor
    - Runas: No Disponible

  - **Pico de Plata:**
    - Crafteo: Yunque Hierro
    - Materiales: 15 plata + 4 madera
    - Nivel requerido: 20
    - Extraccion:
        - Hierro (+4% velocidad extraccion)
        - Plata (+2% velocidad extraccion)
        - Oro (+1% velocidad extraccion)
        - Moonstone (+30% Probabilidad extraccion)
         - 
`Todos los picos de mayor rango otorgan bonificaciones al extraer minerales de 1 rango menor`

## **Herboresteria**

- **Nombre de Variable:** GL_HierbEXP >> Sistema de experiencia para que el Player pueda recolectar hierbas, debe ir vinculado a cada herramienta para la recoleccion de cada planta
   
- **Acciones que dan Exp:**
  - Recolectar hierba: +8 EXP Recolección, +3 EXP Inteligencia, +1 EXP Destreza
  - Identificar planta nueva: +25 EXP Recolección, +10 EXP Inteligencia
  - Cultivar semilla: +5 EXP Recolección, +2 EXP Inteligencia

- **Herramientas y Niveles de Recolecciom:**

   - **Herramientas:**
      - Tijeras
      - Hoz
   - **Niveles**
      - Nvl 1-10: Recoleccion de plantas con un 40% de Probabilidad, +40% de recoger ingredientes danados
      - Nvl 11-20: Recoleccion de Plantas con 70% de Probabilidad, +25% de recoger ingredientes danados

## **Herreria**

- **Nombre de Variable**: GL_SmithingEXp >> Sistema de experiencia para herreria , para progresar se necesita la intervencion de un herrero superior a la clase actual
  - Novato >> Experto >> Maestro >> Sabio >> Divino , Herreria especial Enana Npc especiales, Tambien se necesita de adquirir conocimientos mediante libros notas aleatorias en el mundo
  - la herreria tendra probabilidad de romper armas cuando se desean reforjar

## **Encatanieto**

- **Nombre de Variable**: Gl_EnchantEXP >> Sistema de experiencia para encantamiento , cambiar algunos encantamientos y anadir nuevos
  - **Cambios**:
    - Se anadiran encantamientos elementales , encantamientos de refuerzo y encantamientos especiales mediante el uso de gemas incrutadas en el arma
    - Cada gema debe pertenecer a el elemnto correspondiente
      1. Rubi - Fuego
      2. Zafiro - Rayo
      3. Esmeralda - Veneno
      4. Diamante - Encantamiento de Refuerzo (Estos estaran vacios y se llevaran a un Arcano para encantar con los encantamientos de refuerzo)
      >   - Penetracion de Armadura
      >   - Durabilidad
      >   - Hemorragia
      >   - otros
      1. Diamante Negro - Encantamiento especial
      2. Gemas del alma - Eliminar sus Variantes y dejar solo `Gran Gema del Alma`, se utilizara para Bendecir un arma se debe llevar a un sacerdote
      3. Gema del Alma Oscura - Uso especial para otorgar oscuridad a un arma , se debe acudir a un nigromante
    - Cada arma tendra de 1 a 3 espacios para imbuir la misma , elementos especiales no se pueden imbuir juntos
    - las armas tendran probabilidad de Romperse al tratar de reforzar un encantamiento
    - Algunas armas ganaran efectos especiales si se usa un Diamante Negro , un encantamiento especial y uno elemental

    | Encantamiento Esp  | Fuego  | Rayo | Veneno | Oscuridad  | Bendito  |  Diamante Negro  |
    |--------------------|--------|------|--------|------------|----------|------------------|
    | LLamas Oscuras     |  X     |      |        |     X      |          |       X          |
    | Relampago Oscuro   |        |  X   |        |    X       |          |       X          |
    | Toxico             |        |      |    X   |    X       |          |        X         |
    | Llamas Primitivas  |  X     |      |        |            |   X      |      X           |
    | Relampago primitivo|        |  x   |        |            |   X      |      X           |

    
