-- Very complicated addon!
-- C_LFGList.Search(6,{{matches={"farm"}}},4,4,{deDE=true}) -- proof that english is always returned :-(
local function magic()
	function C_LFGList.GetDefaultLanguageSearchFilter()
		return {}
	end
end

local function OnEvent(self, event, ...)
	if event == "ADDON_LOADED" then
		if (select(1,...)) == "AnyLanguageLFG" then
			AnyLanguageLFG:UnregisterAllEvents()
			AnyLanguageLFG = nil
			magic()
		end
	end
end		
		
AnyLanguageLFG = CreateFrame("Frame")
AnyLanguageLFG:SetScript("OnEvent", OnEvent)
AnyLanguageLFG:RegisterEvent("ADDON_LOADED")