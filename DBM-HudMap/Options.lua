---@class DBM
local DBM = DBM

---@class DBMHudMapNamespace
local private = select(2, ...)

local L = DBM_HUDMAP_L

local defaultSettings = {
	enabled = true
}

---@type table?
local settings

---@return boolean
function private:IsEnabled()
	return settings ~= nil and settings.enabled == true
end

---@param enabled boolean
function private:SetEnabled(enabled)
	if not settings then return end
	settings.enabled = enabled
	if not enabled then
		DBM.HudMap:Disable()
	end
end

-- The HudMap toggle used to be the DBM-Core profile option DontShowHudMap2.
local function migrateLegacyOption()
	if not settings or settings.legacyOptionMigrated then return end
	settings.legacyOptionMigrated = true
	if DBM.Options and DBM.Options.DontShowHudMap2 then
		settings.enabled = false
	end
	if DBM_AllSavedOptions then
		for _, options in pairs(DBM_AllSavedOptions) do
			options.DontShowHudMap2 = nil
		end
	end
end

local loader = CreateFrame("Frame")
loader:RegisterEvent("ADDON_LOADED")
loader:SetScript("OnEvent", function(self, _, addon)
	if addon ~= "DBM-HudMap" then return end
	self:UnregisterEvent("ADDON_LOADED")
	self:SetScript("OnEvent", nil)
	if type(DBM_HudMap_Settings) ~= "table" then
		DBM_HudMap_Settings = {}
	end
	settings = DBM_HudMap_Settings
	for k, v in pairs(defaultSettings) do
		if settings[k] == nil then
			settings[k] = v
		end
	end
	DBM:RegisterOnLoadCallback(migrateLegacyOption)
end)

DBM:RegisterOnGuiLoadCallback(function()
	local GL = DBM_GUI_L
	local panel = DBM_GUI.Cat_Frames:CreateNewPanel(L.Panel_HudMap, "option")
	local general = panel:CreateArea(GL.Area_General)
	local enabled = general:CreateCheckButton(L.EnableHudMap, true)
	enabled:SetScript("OnShow", function(self)
		self:SetChecked(private:IsEnabled())
	end)
	enabled:SetScript("OnClick", function(self)
		private:SetEnabled(not not self:GetChecked())
	end)
end)
