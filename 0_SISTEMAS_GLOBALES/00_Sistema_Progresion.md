# Sistema de Progresión Orgánica

## Objetivo
Este sistema sustituye la progresión rígida de Skyrim por un sistema más vivo, donde las acciones del jugador definen su crecimiento. La idea es que cada acción de juego contribuya a un atributo y a una profesión, sin depender solo del nivel vanilla.

## Base del Sistema
Cada personaje tiene 5 atributos principales:

- Fuerza: daño cuerpo a cuerpo, carga, derribo
- Destreza: velocidad de ataque, precisión, sigilo, evasión
- Inteligencia: magia, alquimia, encantamiento, percepción
- Resistencia: salud, stamina, resistencia a elementos
- Carisma: comercio, persuasión, influencia, seguidores

Estos atributos suben automáticamente con acciones repetidas, también en combinación con una base/profesión.

## Bases / Profesiones
Cada base se relaciona con una acción concreta y con un atributo principal.

### 1. Minería
- Atributo principal: Fuerza + Resistencia
- EXP: extraer, golpear filones, transportar minerales
- Beneficios:
  - Nivel 25: detectar filones cercanos
  - Nivel 50: extracción doble
  - Nivel 75: minerales ricos
  - Nivel 100: golpe perfecto sin perder durabilidad

### 2. Herrería
- Atributo principal: Fuerza + Destreza
- EXP: fabricar, reparar, mejorar arma
- Beneficios:
  - Nivel 25: reparar sin perder materiales
  - Nivel 50: forjar acero sin fallos
  - Nivel 75: mejoras legendarias
  - Nivel 100: armas con ranuras de gema

### 3. Recolección (Herboristería)
- Atributo principal: Inteligencia + Destreza
- EXP: recolectar, identificar, cultivar
- Beneficios:
  - Nivel 25: recolección sin destruir plantas
  - Nivel 50: identificar efectos al mirar
  - Nivel 75: doble cosecha
  - Nivel 100: plantas mágicas crecen cerca del personaje

### 4. Caza (Peletería + Rastreo)
- Atributo principal: Destreza + Inteligencia
- EXP: rastrear, disparar, desollar
- Beneficios:
  - Nivel 25: rastros visibles
  - Nivel 50: pieles perfectas
  - Nivel 75: detectar enemigos por olor
  - Nivel 100: disparo letal premium

### 5. Carpintería
- Atributo principal: Destreza + Fuerza
- EXP: talar, aserrar, fabricar flechas y arcos
- Beneficios:
  - Nivel 25: talar árboles más rápido
  - Nivel 50: madera tratada
  - Nivel 75: arcos élficos
  - Nivel 100: armas de madera viva

### 6. Cocina
- Atributo principal: Inteligencia + Resistencia
- EXP: cocinar, preparar comida, comer comida propia
- Beneficios:
  - Nivel 25: comida con efecto doble
  - Nivel 50: platos con buffs especiales
  - Nivel 75: curación sobre tiempo
  - Nivel 100: banquete de guerra

### 7. Comercio
- Atributo principal: Carisma + Inteligencia
- EXP: vender, comprar, regatear
- Beneficios:
  - Nivel 25: mejor precios
  - Nivel 50: vender a cualquier mercader
  - Nivel 75: invertir en tiendas
  - Nivel 100: manipular precios

## Sinergias entre Bases
Las combinaciones de profesiones abren bonificaciones especiales.

- Minería + Herrería: Forjador de montañas
- Caza + Recolección: Hijo del bosque
- Carpintería + Herrería: Armero completo
- Cocina + Recolección: Herbolario culinario
- Comercio + Caza: Mercado de pieles
- Minería + Carpintería: Ingeniero

## Sistema de XP Visual
Cuando el jugador realiza una acción, se muestra un feedback breve sobre la experiencia ganada:

- [+15 Minería] [barra de progreso]
- [+6 Fuerza] [barra]

Cuando sube un nivel, se activa un efecto visual:
- brillo dorado
- partículas
- cámara lenta breve

## Anti-Grind
Para evitar abuso, se introduce fatiga de habilidad:

- Cada hora de juego consecutiva en la misma base reduce el XP
- Cambiar de actividad resetea la fatiga
- Dormir 8 horas otorga bonus de EXP por 2 horas

## Regla de Progresión
- Los atributos suben de forma gradual y orgánica
- Los niveles máximos prácticos se mantienen entre 1 y 100
- Más allá de ese punto, los atributos siguen creciendo pero con costos mucho mayores

## Ejemplo de Sesión
- Talar árboles -> Carpintería +30, Destreza +12
- Hacer flechas -> Carpintería +20, Destreza +8
- Cazar 2 ciervos -> Caza +40, Destreza +16
- Minar filón -> Minería +45, Fuerza +18
- Forjar arma -> Herrería +30, Fuerza +12

Resultado: el personaje sube varias habilidades en una sola sesión, con progreso visible y natural.

## Conclusión
El sistema de progresión debe sentirse orgánico. El jugador no desbloquea cosas por “niveles abstractos”, sino porque interactúa con el mundo, mejora herramientas, trabaja materiales y se especializa en lo que usa.

## Estado
Borrador de base extraído desde `transcribir.txt` y listo para expandir con detalles por ciudad y facción.
