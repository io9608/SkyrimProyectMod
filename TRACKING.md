# TRACKING - Registro de Implementación y Cambios

Este documento registra **todos los cambios, decisiones y avances** en el proyecto. Se actualiza en cada sesión de trabajo.

---

## Formato de Entrada

```
### [Fecha] - [Título del cambio]
**Responsable:** @usuario  
**Tipo:** [Feature/Fix/Documentation/Refactor]  
**Estado:** [Completado/En Progreso/Bloqueado]  
**Afecta a:** documento_afectado.md

**Descripción:**
- Cambio 1
- Cambio 2

**Notas:** Observaciones adicionales
```

---

## Historial de Cambios

### 2026-10-03 - Creación de Sistema de Índices y Tracking
**Responsable:** @io9608  
**Tipo:** Documentation  
**Estado:** Completado  
**Afecta a:** INDEX.md, TRACKING.md (nuevo archivo)

**Descripción:**
- Creado INDEX.md como índice central del proyecto
- Creado TRACKING.md para llevar registro de cambios
- Diseñada tabla de progreso con 28 documentos esperados
- Establecido sistema de dependencias entre documentos
- Definido plan de trabajo en 4 fases

**Notas:**
- Sistema listo para expandir a medida que se completan documentos
- Se recomienda actualizar INDEX.md y TRACKING.md después de cada sesión

---

### 2026-10-03 - Organización de Contenido de transcribir.txt
**Responsable:** @io9608  
**Tipo:** Documentation  
**Estado:** En Progreso  
**Afecta a:** Global/Sistema_Progresion.md, Global/Sistema_Perks_Hardcore.md, Global/Economia_Dinamica.md, Quest_Principales/

**Descripción:**
- Identificados 6 sistemas principales en transcribir.txt:
  1. Sistema de Progresión Orgánica (60% contenido)
  2. Sistema Hardcore de Perks (50% contenido)
  3. Economía Avanzada (70% contenido)
  4. Quest: Testigo de Helgen (80% contenido)
  5. Quest: Elegido de Akatosh (85% contenido)
  6. Quest: Garra del Dragón (30% contenido)

**Notas:**
- Contenido listo para ser estructurado en documentos individuales
- Requiere eliminación de redundancias y mejora de formato
- Próximo paso: crear documentos .md para cada sistema

---

## Tareas Próximas (Por Prioridad)

### ALTA PRIORIDAD (Semana actual)
- [ ] **Crear `Global/Sistema_Progresion.md`**
  - Transcribir Sistema de Atributos Base
  - Estructurar 7 Bases/Profesiones
  - Definir Sinergias entre Bases
  - Ejemplo de sesión de juego
  - Estado: 🔴 Pendiente

- [ ] **Crear `Global/Sistema_Perks_Hardcore.md`**
  - Reestructura de Perks Vanilla
  - Sistema de Experiencia por Recursos
  - Requisitos de Herramientas (Gates)
  - Sistema de Tiempo Real
  - Estado: 🔴 Pendiente

- [ ] **Crear `Global/Economia_Dinamica.md`**
  - Base de datos de precios
  - Multiplicadores de localización
  - Sistema de saturación y demanda
  - Fluctuaciones estacionales
  - Estado: 🔴 Pendiente

### MEDIA PRIORIDAD (Semana 2)
- [ ] **Pulir `Quest_Principales/Testigo_de_Helgen.md`**
  - Revisar 5 ramas de reacción del Jarl
  - Mejorar diálogos
  - Definir consecuencias a largo plazo
  - Estado: 🟡 Borrador (80%)

- [ ] **Pulir `Quest_Principales/Elegido_de_Akatosh.md`**
  - Revisar 8 actos
  - Estructura de los 3 finales alternativos
  - Conexiones con quest principal
  - Estado: 🟡 Borrador (85%)

### BAJA PRIORIDAD (Semana 3+)
- [ ] **Crear `Quest_Principales/Garra_del_Dragon.md`**
  - Sistema de timeline del dragón
  - Eventos automáticos por día
  - Consecuencias de acciones
  - Estado: 🔴 Pendiente (30%)

- [ ] **Documentar ubicaciones específicas**
  - Whiterun: Distritos y barrios
  - Otras 7 ciudades principales
  - Poblados secundarios

---

## Decisiones Documentadas

### Decisión #1: Sistema de Progresión vs Niveles Vanilla
**Fecha:** 2026-10-03  
**Estado:** ✅ Aprobado

**Descripción:** Se mantendrá el nivel vanilla de Skyrim (1-81) como catalizador, pero se añade sistema de Atributos Base que suben automáticamente según acciones. No reemplaza perks, sino que añade requisitos previos.

**Alternativas consideradas:**
- A: Sistema completamente nuevo sin niveles vanilla (rechazado - complejo)
- B: Perks hardcore con requisitos de tiempo real (aprobado - se implementa)
- C: Mantener vanilla sin cambios (rechazado - proyecto lo requiere)

**Impacto:** Requiere ajustes en Sistema_Perks_Hardcore.md

---

### Decisión #2: Economía Dinámica con Precios Regionales
**Fecha:** 2026-10-03  
**Estado:** ✅ Aprobado

**Descripción:** Cada ciudad tendrá multiplicadores de precio únicos, y los precios fluctuarán según:
- Localización (capital vs poblado)
- Estación (ciclo de 12 meses)
- Saturación local (oferta vs demanda)
- Eventos dinámicos (guerra, asedio, etc.)

**Alternativas consideradas:**
- A: Precios fijos vanilla (rechazado - poco realista)
- B: Precios aleatorios sin lógica (rechazado - confuso)
- C: Sistema dinámico con múltiples factores (aprobado)

**Impacto:** Requiere sistema de scripting avanzado, pero documentación está lista

---

### Decisión #3: Quest de Helgen con Múltiples Ramas
**Fecha:** 2026-10-03  
**Estado:** ✅ Aprobado

**Descripción:** En lugar de una única quest lineal, el inicio tendrá 5 ramas distintas según cómo el jugador se presente ante el Jarl (diplomacia, chantaje, extorsión, honestidad, diario).

**Alternativas consideradas:**
- A: Quest lineal como vanilla (rechazado - poco replay value)
- B: Sistema de elecciones con 3 ramas (considerado)
- C: Sistema de 5 ramas con múltiples reacciones (aprobado)

**Impacto:** Requiere más trabajo de diálogos pero aumenta jugabilidad

---

### Decisión #4: Prisionero de Helgen como NPC "Varen Aquilaris"
**Fecha:** 2026-10-03  
**Estado:** ✅ Aprobado

**Descripción:** El prisionero vanilla no será un NPC genérico. Será "Varen Aquilaris", ex-Blade con sangre de dragón incompleta. Esto abre una quest paralela épica con 8 actos y 3 finales.

**Alternativas consideradas:**
- A: Prisionero desaparece tras Helgen (vanilla)
- B: Prisionero es un NPC aleatorio (rechazado)
- C: Prisionero es NPC importante con quest (aprobado)

**Impacto:** Añade profundidad narrativa, requiere custom dialogue y scripting

---

### Decisión #5: Timeline Persistente del Dragón
**Fecha:** 2026-10-03  
**Estado:** ✅ Aprobado

**Descripción:** La quest "Garra del Dragón" tendrá un timeline de 7 días en juego. Si el jugador no actúa, el dragón atacará de todas formas en el día 7 (pero la ciudad estará menos preparada).

**Alternativas consideradas:**
- A: Quest con tiempo infinito (rechazado - sin presión)
- B: Quest con cuenta atrás pero ignorable (rechazado)
- C: Quest con timeline fijo y consecuencias (aprobado)

**Impacto:** Requiere sistema de eventos automáticos, pero documentación lista

---

## Bloqueadores y Riesgos

| # | Bloqueador | Severidad | Solución | Estado |
|---|-----------|-----------|----------|--------|
| 1 | Herramientas modding (Creation Kit) no instaladas | 🟡 Media | Usar documentación como especificación | En espera |
| 2 | Parecería que requiere scripting Papyrus complejo | 🟠 Alta | Implementar gradualmente, testing en phases | En espera |
| 3 | Posible conflicto con otros mods de economía | 🟡 Media | Documentar incompatibilidades, crear patches | Futuro |
| 4 | Exceso de contenido podría ralentizar el juego | 🟠 Alta | Optimizar scripts, usar lazy loading | Testing necesario |

---

## Métricas de Progreso

### Por Tipo de Documento
```
Sistemas Base:       3/3 iniciados,  0/3 completados  (0%)
Quests Principales: 3/3 iniciados,  0/3 completados  (0%)
Ubicaciones:        1/9 completado, 0/8 faltando     (11%)
Facciones:          0/3 iniciados,  0/3 completados  (0%)
Técnico:            2/2 completados                   (100%)
```

### Progreso General
```
Total documentos esperados: 28
Completados: 2 (INDEX.md, TRACKING.md)
En borrador: 6
Pendientes: 20
Completitud: 7% (por ahora)
```

---

## Notas Generales

### Lo que está funcionando bien
✅ Documentación clara y detallada en `transcribir.txt`  
✅ Decisiones de diseño bien fundamentadas  
✅ Sistema de referencias cruzadas definido  
✅ Timeline del proyecto realista  

### Lo que necesita atención
⚠️ Necesidad de revisar papyrus scripts para compatibilidad  
⚠️ Balance de economía requiere testing exhaustivo  
⚠️ Quests con múltiples ramas requieren muchos diálogos  

### Recomendaciones
1. Completar primero los 3 sistemas base (Progresión, Perks, Economía)
2. Luego pulir las 3 quests principales
3. Expandir a ubicaciones específicas después
4. Dejar facciones y scripting para fase final

---

## Próxima Sesión

**Fecha Estimada:** 2026-10-04  
**Objetivos:**
- [ ] Crear `Global/Sistema_Progresion.md` con estructura completa
- [ ] Crear `Global/Sistema_Perks_Hardcore.md` con tablas
- [ ] Comenzar `Global/Economia_Dinamica.md`
- [ ] Revisar y pulir contenido de `transcribir.txt`

**Tiempo Estimado:** 2-3 horas

---

**Última actualización:** 2026-10-03 19:45 UTC  
**Responsable:** @io9608  
**Versión:** 1.0
