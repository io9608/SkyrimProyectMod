# Índice General del Proyecto - SkyrimProyectMod

## Descripción General
Este proyecto es una revisión completa y profunda del mod de Skyrim que toca aspectos fundamentales del juego:
- Sistema de progresión de personaje
- Economía dinámica y realista
- Quests principales con ramificaciones narrativas
- Sistema de subclases y profesiones
- Eventos y timeline persistente
# Cambios Generales

- Descripcion:
  - Mejoras en la I.A de los npc, sistema de reconocimiento facial, mejoras de comportamiento segun reputacion del player, sistema de emociones en los npc, cambio de actividades segun horarios, nuevas quest alternativas (traicion, drama, suspenso, terror ect...)
  - Nuevo sistema economico en todo Skyrim, cambios en precios segun localizaciones, cambios en demandas segun epocas, inflacion de productos segun actividades del player
  - Nuevos requisitos para especializarse en ciertas areas y para la recoleccion de minerales, plantas, pieles y otros productos primarios
  - Cambios en trabajos Secundarios en el player , herreria , encantamiento, alquimia, caza etc....
  - Introduccion de nuevas facciones y trabajos secundarios, mercaderes, exploradores, joyeros etc...
  - Nuevas tropas elites en los ejercitos de cada ciudad principal, cambios de bandos, reclutamientos
  - Mejoras en quest Principales y subquest
  - Nuevo Modo de Creacion de Casas o Ciudades
  - Nuevos Eventos en cada localizacion, organizacion del Timeline Flujo de Tiempo real, actividades seguiran ocurriendo sin la necesidad del player
  - Mejoras en la I.A de los npc, sistema de reconocimiento facial, mejoras de comportamiento segun reputacion del player, sistema de emociones en los npc, cambio de actividades segun horarios, nuevas quest alternativas (traicion, drama, suspenso, terror ect...)
  - Nuevo sistema economico en todo Skyrim, cambios en precios segun localizaciones, cambios en demandas segun epocas, inflacion de productos segun actividades del player
  - Nuevos requisitos para especializarse en ciertas areas y para la recoleccion de minerales, plantas, pieles y otros productos primarios
  - Cambios en trabajos Secundarios en el player , herreria , encantamiento, alquimia, caza etc....
  - Introduccion de nuevas facciones y trabajos secundarios, mercaderes, exploradores, joyeros etc...

---

## Tabla de Progreso General

| #     | Categoría                 | SubCategorias | Documento                                     | Estado       | % Completo | Última Actualización | Notas                                     | Enlaces                       |
| ----- | ------------------------- | ------------- | --------------------------------------------- | ------------ | ---------- | -------------------- | ----------------------------------------- | ----------------------------- |
| 1     | **SISTEMAS GLOBALES**     |               |                                               |              |            |                      |                                           |                               |
| 1.1   | Progresión Orgánica       |               | `SISTEMAS_GLOBALES/Sistema_Progresion.md`     | 🟡 Borrador  | 60%        | 2026-10-03           | Necesita refactorización de atributos     | [[00_Sistema_Progresion]]     |
| 1.2   | Perks Hardcore            |               | `SISTEMAS_GLOBALES/Sistema_Perks_Hardcore.md` | 🟡 Borrador  | 50%        | 2026-10-03           | Requisitos de tiempo real definidos       | [[01_Sistema_Perks_Hardcore]] |
| 1.3   | Economía Dinámica         |               | `SISTEMAS_GLOBALES/Economia_Dinamica.md`      | 🟡 Borrador  | 70%        | 2026-10-03           | Tablas de precios completas               | [[02_Economia_Dinamica]]      |
| 1.4   | Subclases                 |               | `SISTEMAS_GLOBALES/Sub_Clases.md`             | 🟡Borrador   | 50%        | 2026-10-03           | Nuevo sistema de SubClases                | [[03_SubClases]]              |
| 2     | **QUESTS PRINCIPALES**    |               |                                               |              |            |                      |                                           |                               |
| 2.1   |                           |               |                                               |              |            |                      |                                           |                               |
| 3     | **UBICACIONES:**          |               |                                               |              |            |                      |                                           |                               |
| 3.1   | **WHITERUN**              |               |                                               |              |            |                      |                                           |                               |
|       | Guía de Trabajo           |               | `Whiterun/Guia_Trabajo_Whiterun.md`           | ✅ Completo   | 100%       | 2026-10-03           | Estructura base, revisar integración      | [[Whiterun/Whiterun_City]]     |
| 3.1.1 |                           | **Distritos** |                                               |              |            |                      |                                           |                               |
|       | Distritos de la Ciudad    |               | `Whiterun/Distritos.md`                       | 🔴 Pendiente | 0%         | -                    | Requiere diseño de barrios                |                               |
| 3.1.2 |                           | **Scripts**   |                                               |              |            |                      |                                           |                               |
|       | Scripts Papyrus           |               | `Whiterun/Scripts/`                           | 🟡 Borrador  | 20%        | 2026-10-03           | Solo WR_ComercialDistrictTriggerSC existe | [[00_Whiterun_Scripts]]       |
| 3.1.3 |                           | **Subquest**  |                                               |              |            |                      |                                           |                               |
|       | Garra del Dragón          |               | `Quest_Principales/Garra_del_Dragon.md`       | 🔴 Pendiente | 30%        | 2026-10-03           | Requiere timeline y consecuencias         |                               |
|       | Elegido de Akatosh        |               | `Quest_Principales/Elegido_de_Akatosh.md`     | 🟡 Borrador  | 85%        | 2026-10-03           | 8 actos, 3 finales alternativos           |                               |
|       | Testigo de Helgen         |               | `Quest_Principales/Testigo_de_Helgen.md`      | 🟡 Borrador  | 80%        | 2026-10-03           | 5 ramas de diálogo definidas              |                               |
|       |                           |               |                                               |              |            |                      |                                           |                               |
| 3.2   | **Solitude**              |               |                                               |              |            |                      |                                           |                               |
|       | Guia Solitude             |               | `Ciudades/Solitude.md`                        | 🔴 Pendiente | 0%         | -                    |                                           |                               |
| 3.3   | **Eastmarch**             |               | `Ciudades/Windhelm.md`                        | 🔴 Pendiente | 0%         | -                    |                                           |                               |
|       | Guia Eastmarch            |               |                                               |              |            |                      |                                           |                               |
| 3.4   | **THE REACH(MARKART)**    |               |                                               |              |            |                      |                                           |                               |
|       | Guia The Reach (Markarth) |               | `Ciudades/Markarth.md`                        | 🔴 Pendiente | 0%         | -                    |                                           |                               |
| 3.5   | **THE RIFT(RIFTEN)**      |               |                                               |              |            |                      |                                           |                               |
|       | Guia The Rift (Riften)    |               | `Ciudades/Riften.md`                          | 🔴 Pendiente | 0%         | -                    |                                           |                               |
| 3.6   | **FALKREATH**             |               | `Ciudades/Falkreath.md`                       | 🔴 Pendiente | 0%         | -                    |                                           |                               |
| 3.7   | **The Pale (Dawnstar)**   |               | `Ciudades/Dawnstar.md`                        | 🔴 Pendiente | 0%         | -                    |                                           |                               |
| 3.8   | **Hjaalmarch (Morthal)**  |               | `Ciudades/Morthal.md`                         | 🔴 Pendiente | 0%         | -                    |                                           |                               |
| 3.9   | **Winterhold**            |               | `Ciudades/Winterhold.md`                      | 🔴 Pendiente | 0%         | -                    |                                           |                               |
| 4     | **FACCIONES GLOBALES**    |               |                                               |              |            |                      |                                           |                               |
| 4.1   | Gremio de Aventureros     |               | `Global/Gremios/Aventureros_Guild.md`         | 🔴 Pendiente | 0%         | -                    | Referenciado en guía                      |                               |
| 4.2   | Gremio de Comerciantes    |               | `Global/Gremios/Comerciantes_Guild.md`        | 🔴 Pendiente | 0%         | -                    | Referenciado en guía                      |                               |
| 4.3   | Mercado Negro             |               | `Global/Gremios/Mercado_Negro.md`             | 🔴 Pendiente | 0%         | -                    | Sistema de contrabando                    |                               |
| 5     | **DOCUMENTACIÓN TÉCNICA** |               |                                               |              |            |                      |                                           |                               |
| 5.1   | Tracking de Cambios       |               | `TRACKING.md`                                 | 🟢 Activo    | 100%       | 2026-10-03           | Se actualiza cada sesión                  | [[TRACKING]]                  |
| 6.2   | Guía de Contribución      |               | `CONTRIBUTING.md`                             | 🔴 Pendiente | 0%         | -                    |                                           |                               |
|       |                           |               |                                               |              |            |                      |                                           |                               |

---

## Leyenda de Estados

| Símbolo | Estado | Significado |
|---------|--------|------------|
| 🔴 | Pendiente | No iniciado |
| 🟡 | Borrador | En desarrollo, requiere revisión |
| 🟠 | Revisión | Completado, en fase de revisión |
| 🟢 | Activo | En uso/actualización continua |
| ✅ | Completo | Finalizado y listo |

---

## Dependencias Entre Documentos

```
INDEX.md (tú estás aquí)
    ↓
TRACKING.md (registro de cambios)
    ├── Global/Sistema_Progresion.md
    │   └── Global/Sistema_Perks_Hardcore.md
    │       └── Global/Economia_Dinamica.md
    │
    ├── Quest_Principales/Testigo_de_Helgen.md
    │   └── Quest_Principales/Elegido_de_Akatosh.md
    │       └── Quest_Principales/Garra_del_Dragon.md
    │
    ├── Whiterun/Guia_Trabajo_Whiterun.md
    │   └── Whiterun/Distritos.md
    │       └── Whiterun/Scripts/*.psc
    │
    └── Global/Gremios/* (Facciones)
        └── Ciudades/* (Ubicaciones específicas)
```

---

## Flujo de Trabajo Recomendado

### Fase 1: Sistemas Base (Semana 1-2)
1. ✅ Finalizar `Sistema_Progresion.md`
2. ✅ Finalizar `Sistema_Perks_Hardcore.md`
3. ✅ Finalizar `Economia_Dinamica.md`

### Fase 2: Quests Principales (Semana 3-4)
1. ⬜ Pulir `Testigo_de_Helgen.md`
2. ⬜ Pulir `Elegido_de_Akatosh.md`
3. ⬜ Completar `Garra_del_Dragon.md`

### Fase 3: Ubicaciones (Semana 5-6)
1. ⬜ Crear documentos de cada ciudad
2. ⬜ Definir quests secundarias por ubicación
3. ⬜ Diseñar barrios en Whiterun

### Fase 4: Facciones y Sistemas Secundarios (Semana 7-8)
1. ⬜ Desarrollar gremios
2. ⬜ Crear misiones de facciones
3. ⬜ Sistema de reputación global

---

## Estadísticas del Proyecto

| Métrica | Valor |
|---------|-------|
| **Documentos totales esperados** | 28 |
| **Documentos completados** | 2 |
| **Documentos en borrador** | 6 |
| **Líneas de contenido** | ~15,000+ |
| **Sistemas principales** | 3 |
| **Quests principales** | 3 |
| **Ciudades a documentar** | 8 |
| **Facciones globales** | 3 |

---

## Cómo Usar Este Índice

### Para marcar progreso:
1. Abre este archivo
2. En la tabla, cambia el emoji del estado según avances:
   - 🔴 → 🟡 (cuando empieces)
   - 🟡 → 🟠 (cuando termines borrador)
   - 🟠 → ✅ (cuando esté completamente pulido)
3. Actualiza el "% Completo" y "Última Actualización"

### Para ver dependencias:
- Consulta el diagrama "Dependencias Entre Documentos"
- Si trabajas en `Testigo_de_Helgen.md`, primero termina `Sistema_Progresion.md`

### Para hacer seguimiento detallado:
- Abre `TRACKING.md` para ver historial completo de cambios
- Cada sesión debe dejar un registro en TRACKING.md

---

## Próximas Acciones

- [ ] Crear `Global/Sistema_Progresion.md` (estructura completa)
- [ ] Crear `Global/Sistema_Perks_Hardcore.md` (tablas y fórmulas)
- [ ] Crear `Global/Economia_Dinamica.md` (mercados y precios)
- [ ] Crear `Quest_Principales/Testigo_de_Helgen.md` (diálogos y ramas)
- [ ] Crear `Quest_Principales/Elegido_de_Akatosh.md` (8 actos)
- [ ] Crear `Quest_Principales/Garra_del_Dragon.md` (timeline y consecuencias)

---

**Última actualización:** 2026-10-03  
**Responsable:** @io9608  
**Versión:** 1.0


