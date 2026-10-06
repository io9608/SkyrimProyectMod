# Variables Globales

**Todas son manejadas mediante scripts para aumentar/decrecer los valores predeterminados**

- WR_DistrictEntrance >> Manejo de la Entrada a los distritos segun parametros de reputacion su valor ira incrementando
  - 1 >> Distrito Comercial - WR_ComercialDistrict
  - 2 >> Distrito Noble - WR_CloudDistrict
  - 3 >> Distrito Real ( Dragonreach ) - WR_DragonreachDistrict
  - 4 >> Escenario Especial ( Helguen ) - WR_SpecialEntrance

- WR_CityReputacion >>

- WR_GuardRumors  >> Sistema de Rumores entre guardias puede aumentar el nivel de sospechas al player , comportamiento etc.. va estrechamente vinculado a el tipo de equipo que usa el player 

- WR_GuardMemorie >> esta sera una variable individual para los guardias se debe usar un sistema de reseteo dentro del juego para disminuir el uso de memoria dentro del juego , de momento se usara reseteo cada 4 dias o 1 semana en el juego 

- WR_ComercialReputacion >> Reputacion de Comerciante en la ciudad de whiterun , va en aumento segun las quest , items vendidos , tipo de items , artesanias etc..
  - Tipos de Items: 
    - Artesanias 
    - items de Caza
    - Minerales
    - Miscelaneus

- WR_AdventurerRep >> Variable para el Control de Reputacion del Player manejado por el gremio de Aventureros solo afecta la ciudad en caso de Reputacion muy alta se incrementa la reputacion y rumores legales, decrece o aumenta segun las acciones del player en la ciudad
  - 1-30 >>> Aventurero de Rango E , +2 por misiones en el gremio realizadas , +5 por misiones importantes, +10 misiones peligrosas y vitales
  - 31-50 >> Aventurero de Rango D , +5 misiones de escolta , +10 Cazador de Monstruos , +20 misiones Importantes peligrosas
  - 51-70 >> Aventurero de Rango C , +5 misiones de escolta , +15 Cazador de Montruos Especiales, +20 Misiones Importantes Peligrosas
    - sube la reputacion a conocido en la cuidad
  - 71-90 >> Aventurero de Rango B
    - Sube la Reputacion a Aliado en la ciudad
  - 91-100 >> Aventurero de Rango A
    - sube la Reputacion a Heroe en la ciudad , puede subir la Reputacion Global dependiendo de la mision
  - 100++ >> Aventurero Rango S
    - sube la Reputacion puede incluir nombramiento de Thane de la ciudad , privilegios especiales etc...

