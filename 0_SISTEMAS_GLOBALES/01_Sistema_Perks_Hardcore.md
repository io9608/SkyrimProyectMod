# Sistema de Perks Hardcore

## Objetivo
Mantener los perks de Skyrim en su forma base, pero exigir un coste real en tiempo y esfuerzo para desbloquearlos. La idea es que el juego siga siendo reconocible, pero la progresión se vuelva más profunda y menos automática.

## Regla General
Los perks vanilla se mantienen, pero no se activan por tener solo la habilidad suficiente. Hay que cumplir requisitos adicionales:

- nivel de habilidad
- atributo mínimo
- tiempo real de uso
- herramientas requeridas
- objetivos específicos de combate o trabajo

## Estructura de Requisitos
Ejemplo simplificado:

- Perk base: Armas a dos manos
- Requisito de habilidad: 20 en Dos Manos
- Requisito de tiempo: 2 horas usando ese estilo
- Requisito de atributo: Fuerza 15
- Requisito adicional: participar en combate real

## Ejemplos de Perks

### Dos Manos
- Barbarian: requerido con 20 en Dos Manos, 2 horas de uso, Fuerza 15
- Devastating Blow: 50 en Dos Manos, 10 horas + 50 enemigos melee, Fuerza 35
- Champion's Stance: 60 en Dos Manos, maestría de combate, Fuerza 45

### Tiro con Arco
- Overdraw: 20 en Tiro, 3 horas cazando, Destreza 20
- Eagle Eye: 60 en Tiro, 15 horas + 200 disparos precisos, Destreza 50
- Bullseye: 100 en Tiro, 50 horas + derrotar 5 dragones con arco, Destreza 80

### Herrería
- Steel Smithing: 20 en Herrería, 50 objetos de hierro, Fuerza 25
- Arcane Blacksmith: 60 en Herrería, 10 objetos mágicos, Inteligencia 40, Fuerza 40
- Daedric Smithing: 100 en Herrería, forjar ébano + sacrificio daedra, Fuerza 70

## Sistema de XP por Recursos
Se usa una curva exponencial para que el progreso tenga sentido.

| Recurso | XP Base | Tiempo estimado | Requisito |
|--------|---------|----------------|-----------|
| Carbón / Piedra | 2 XP | 0-2 horas | pico básico |
| Cobre / Estaño | 5 XP | 2-5 horas | pico de cobre |
| Hierro | 12 XP | 5-10 horas | pico de hierro |
| Plata | 25 XP | 10-20 horas | pico de acero |
| Oro | 45 XP | 20-35 horas | pico de acero |
| Oricalco | 80 XP | 35-50 horas | pico élfico |
| Ébano | 150 XP | 50-70 horas | pico de ébano |
| Daedrita | 300 XP | 70-100 horas | pico daedra |

## Fórmula de XP
XP Necesario = 100 × (nivel_actual ^ 1.8)

- Nivel 1 a 2: 100 XP
- Nivel 25 a 26: 6.250 XP
- Nivel 50 a 51: 25.000 XP
- Nivel 100: 1.000.000 XP total acumulado

## Jerarquía de Herramientas
El jugador necesita las herramientas adecuadas para poder realizar una acción. No se permite “probar” sin la herramienta apropiada.

### Minería
- Pico improvisado
- Pico de cobre
- Pico de hierro
- Pico de acero
- Pico élfico
- Pico de ébano
- Pico daedra
- Pico Dragonbone

### Herboristería
- Manos desnudas
- Cuchillo de cocina
- Cuchillo de hierro
- Cuchillo de cazador
- Cuchillo de alquimista
- Cuchillo élfico
- Cuchillo daedra

## Sistema de Tiempo Real
No basta con jugar afk o repetir mismos clics. El juego debe medir tiempo real dedicado a la actividad.

Categorías:
- tiempo de combate
- tiempo de forja
- tiempo de recolección
- tiempo de caza

## Tiempo Requerido para Maestría
Ejemplos:

- Dos Manos: 40 horas de combate real
- Tiro con Arco: 50 horas de arquería
- Herrería: 35 horas forjando
- Minería: 60 horas minando
- Recolección: 45 horas recolectando

## Nivel del Personaje como Catalizador
El nivel del personaje modifica la velocidad a la que ganas XP.

- 1-10: XP x1.0
- 11-25: XP x1.2
- 26-40: XP x1.5
- 41-60: XP x2.0
- 61-80: XP x2.5
- 81+: XP x3.0

## Anti-Shortcut
Se introducen varias medidas para evitar explotación:

- Fatiga de maestría
- Bloqueo por herramientas
- Requisitos de prerrequisitos
- Zonas de nivel
- Pérdida de progreso al morir

## Fases de Progreso
### Fase 1: Superviviente
- Herramientas básicas
- Acceso a recursos fáciles
- Daño base +10-20%

### Fase 2: Artesano
- Herramientas de hierro
- Acceso a minerales intermedios
- Daño base +30-50%

### Fase 3: Especialista
- Herramientas de acero y élfica
- Acceso a materiales raros
- Daño base +60-100%

### Fase 4: Maestro
- Herramientas de ébano y daedra
- Acceso a contenido épico
- Daño base +150-250%

### Fase 5: Leyenda
- Herramientas legendarias
- Acceso total al contenido del mundo
- Daño base +300-500%

## Conclusión
Este sistema mantiene la identidad de Skyrim, pero exige que el jugador realmente dedique tiempo, esfuerzo y cuidado a cada disciplina. El progreso se siente adquirido, no regado.

## Estado
Borrador técnico extraído de `transcribir.txt` y listo para ser ajustado con sistema de niveles, base de ciudades y misiones.
