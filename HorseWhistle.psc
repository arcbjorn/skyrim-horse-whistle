Scriptname HorseWhistle extends Quest

Actor Property PlayerHorse Auto

Event OnInit()
    RegisterForKey(35) ; H key
EndEvent

Event OnKeyDown(int keyCode)
    if keyCode == 35
        SummonHorse()
    endif
EndEvent

Function SummonHorse()
    if PlayerHorse != None
        PlayerHorse.MoveTo(Game.GetPlayer())
        Debug.Notification("Horse summoned")
    else
        Debug.Notification("No horse owned")
    endif
EndFunction

Function SetPlayerHorse(Actor horse)
    PlayerHorse = horse
EndFunction
