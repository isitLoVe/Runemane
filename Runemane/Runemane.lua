function Runemane_EventFrame_OnLoad()
	this:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	this:RegisterEvent("PLAYER_UNGHOST")
end

function Runemane_EventFrame_OnEvent()
	if(event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_UNGHOST") then
		local z = GetRealZoneText()
		if z =="Naxxramas" then
			SetCVar("farclip",357)
		else
			SetCVar("farclip",777)
		end
	end
end