local function virusMusicTest()
	surface.PlaySound("gmodtower/virus/roundplay" .. math.random(1,5) .. ".mp3")
	surface.PlaySound("gmodtower/virus/stinger.mp3")
end
net.Receive("Virus roundMusic", virusMusicTest)

function SurvivorsWin( um )
	surface.PlaySound( "gmodtower/virus/roundend_survivors.mp3")
	surface.PlaySound("gmodtower/virus/announce_survivorswin.wav")
	surface.PlaySound("gmodtower/virus/ui/menu.wav")
end
usermessage.Hook("SurvivorsWin", SurvivorsWin)

function VirusWaitForInfected( um )
	surface.PlaySound("gmodtower/virus/waiting_forinfection"..math.random(1,8)..".mp3")
end
usermessage.Hook("VirusWaitForInfected", VirusWaitForInfected)