# Índice General del Proyecto - SkyrimProyectMod

## Descripción General
Este proyecto es una revisión completa y profunda del mod de Skyrim que toca aspectos fundamentales del juego:
- Sistema de progresión de personaje
- Economía dinámica y realista
- Quests principales con ramificaciones narrativas
- Sistema de subclases y profesiones
- Eventos y timeline persistente

---

## Tabla de Progreso General

| # | Categoría | Documento | Estado | % Completo | Última Actualización | Notas |
|---|-----------|-----------|--------|-----------|----------------------|-------|
| 1 | **SISTEMAS GLOBALES** | | | | | |
| 1.1 | Progresión Orgánica | `Global/Sistema_Progresion.md` | 🟡 Borrador | 60% | 2026-10-03 | Necesita refactorización de atributos |
| 1.2 | Perks Hardcore | `Global/Sistema_Perks_Hardcore.md` | 🟡 Borrador | 50% | 2026-10-03 | Requisitos de tiempo real definidos |
| 1.3 | Economía Dinámica | `Global/Economia_Dinamica.md` | 🟡 Borrador | 70% | 2026-10-03 | Tablas de precios completas |
| 1.4 | Subclases | `Global/Sub_Clases.md` | ✅ Completo | 100% | 2026-10-03 | Documento existente, revisar |
| 2 | **QUESTS PRINCIPALES** | | | | | |
| 2.1 | Testigo de Helgen | `Quest_Principales/Testigo_de_Helgen.md` | 🟡 Borrador | 80% | 2026-10-03 | 5 ramas de diálogo definidas |
| 2.2 | Elegido de Akatosh | `Quest_Principales/Elegido_de_Akatosh.md` | 🟡 Borrador | 85% | 2026-10-03 | 8 actos, 3 finales alternativos |
| 2.3 | Garra del Dragón | `Quest_Principales/Garra_del_Dragon.md` | 🔴 Pendiente | 30% | 2026-10-03 | Requiere timeline y consecuencias |
| 3 | **UBICACIONES: WHITERUN** | | | | | |
| 3.1 | Guía de Trabajo | `Whiterun/Guia_Trabajo_Whiterun.md` | ✅ Completo | 100% | 2026-10-03 | Estructura base, revisar integración |
| 3.2 | Distritos de la Ciudad | `Whiterun/Distritos.md` | 🔴 Pendiente | 0% | - | Requiere diseño de barrios |
| 3.3 | Scripts Papyrus | `Whiterun/Scripts/` | 🟡 Borrador | 20% | 2026-10-03 | Solo WR_ComercialDistrictTriggerSC existe |
| 4 | **UBICACIONES: OTRAS CIUDADES** | | | | | |
| 4.1 | Haafingar (Solitude) | `Ciudades/Solitude.md` | 🔴 Pendiente | 0% | - | |
| 4.2 | Eastmarch (Windhelm) | `Ciudades/Windhelm.md` | 🔴 Pendiente | 0% | - | |
| 4.3 | The Reach (Markarth) | `Ciudades/Markarth.md` | 🔴 Pendiente | 0% | - | |
| 4.4 | The Rift (Riften) | `Ciudades/Riften.md` | 🔴 Pendiente | 0% | - | |
| 4.5 | Falkreath | `Ciudades/Falkreath.md` | 🔴 Pendiente | 0% | - | |
| 4.6 | The Pale (Dawnstar) | `Ciudades/Dawnstar.md` | 🔴 Pendiente | 0% | - | |
| 4.7 | Hjaalmarch (Morthal) | `Ciudades/Morthal.md` | 🔴 Pendiente | 0% | - | |
| 4.8 | Winterhold | `Ciudades/Winterhold.md` | 🔴 Pendiente | 0% | - | |
| 5 | **FACCIONES GLOBALES** | | | | | |
| 5.1 | Gremio de Aventureros | `Global/Gremios/Aventureros_Guild.md` | 🔴 Pendiente | 0% | - | Referenciado en guía |
| 5.2 | Gremio de Comerciantes | `Global/Gremios/Comerciantes_Guild.md` | 🔴 Pendiente | 0% | - | Referenciado en guía |
| 5.3 | Mercado Negro | `Global/Gremios/Mercado_Negro.md` | 🔴 Pendiente | 0% | - | Sistema de contrabando |
| 6 | **DOCUMENTACIÓN TÉCNICA** | | | | | |
| 6.1 | Tracking de Cambios | `TRACKING.md` | 🟢 Activo | 100% | 2026-10-03 | Se actualiza cada sesión |
| 6.2 | Guía de Contribución | `CONTRIBUTING.md` | 🔴 Pendiente | 0% | - | |

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
