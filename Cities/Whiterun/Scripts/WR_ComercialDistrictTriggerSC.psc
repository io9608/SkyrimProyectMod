Scriptname WhiterunEntryTriggerScript extends ObjectReference

Quest         Property DistrictManagerQuest Auto
GlobalVariable Property WR_ComercialDistrict Auto
Bool          Property bDebug = True Auto

Event OnTriggerEnter(ObjectReference akActionRef)
    If akActionRef == Game.GetPlayer()
        ; Solo actuamos si no está marcado que el jugador ya entró
        If WR_ComercialDistrictEntrance.GetValue() == 0.0
            If DistrictManagerQuest
                ; Notificamos al quest manager mediante stage (evita enlaces directos a scripts)
                DistrictManagerQuest.SetStage(10)
                If bDebug
                    Debug.Notification("District trigger: notificado DistrictManager (stage 10).")
                    Debug.Trace("WhiterunEntryTrigger: SetStage(10) enviado.")
                EndIf
            Else
                If bDebug
                    Debug.Trace("WhiterunEntryTrigger: DistrictManagerQuest no asignado.")
                EndIf
            EndIf
        Else
            If bDebug
                Debug.Trace("WhiterunEntryTrigger: jugador ya marcado como entrado, ignorado.")
            EndIf
        EndIf
    EndIf
EndEvent
