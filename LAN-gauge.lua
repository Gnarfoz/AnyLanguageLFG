# Very complicated addon!
local function magic()
	function C_LFGList.GetDefaultLanguageSearchFilter()
		return {}
	end
end

local function OnEvent(self, event, ...)
	if event == "ADDON_LOADED" then
		if (select(1,...)) == "AnyLanguageLFG" then
			AnyLanguageLFG:UnregisterAllEvents()
			magic()
		end
	end
end		
		
local AnyLanguageLFG = CreateFrame("Frame")
AnyLanguageLFG:SetScript("OnEvent", OnEvent)
AnyLanguageLFG:RegisterEvent("ADDON_LOADED")