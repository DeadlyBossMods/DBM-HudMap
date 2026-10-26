---@class DBM
local DBM = DBM

local L = DBM_HUDMAP_L

local tinsert, twipe = table.insert, table.wipe
local RAID_CLASS_COLORS = _G["CUSTOM_CLASS_COLORS"] or RAID_CLASS_COLORS

---@class DBMHudMap
local mod = DBM.HudMap

local trackedHudMarkers = {}

---Handles "/dbm hud", delegated from DBM-Core
---@param cmd string lowercased arguments following "hud"
---@param msg string original-case arguments following "hud"
function mod:HandleSlashCommand(cmd, msg)
	DBM:UpdateMapRestrictions()
	if DBM:HasMapRestrictions() then
		DBM:AddMsg(L.NO_HUD)
		return
	end
	local hudType, target, duration = string.split(" ", cmd:trim())
	local _, targetOG, _ = string.split(" ", msg:trim())
	if hudType == "" then
		for _, v in ipairs(L.HUD_USAGE) do
			DBM:AddMsg(v)
		end
		return
	end
	local hudDuration = tonumber(duration) or 1200 -- If no duration defined. 20 minutes to cover even longest of fights
	if type(hudType) == "string" and hudType:trim() ~= "" then
		if hudType == "hide" then
			for _, name in ipairs(trackedHudMarkers) do
				self:FreeEncounterMarkerByTarget(12345, name)
			end
			twipe(trackedHudMarkers)
			return
		end
		if not target then
			DBM:AddMsg(L.HUD_INVALID_TARGET)
			return
		end
		local uId
		if target == "target" and UnitExists("target") then
			uId = "target"
		elseif DBM:IsRetail() and target == "focus" and UnitExists("focus") then
			uId = "focus"
		else -- Try to use it as player name
			uId = DBM:GetRaidUnitId(targetOG)
		end
		if not uId then
			DBM:AddMsg(L.HUD_INVALID_TARGET)
			return
		end
		if UnitIsUnit("player", uId) and not DBM.Options.DebugMode then -- Don't allow hud to self, except if debug mode is enabled, then hud to self useful for testing
			DBM:AddMsg(L.HUD_INVALID_SELF)
			return
		end
		local targetName = DBM:IsForever() and GetUnitName(uId) or UnitName(uId)
		if hudType == "arrow" then
			local playerName = DBM:GetMyPlayerInfo()
			local _, targetClass = UnitClass(uId)
			local color2 = RAID_CLASS_COLORS[targetClass]
			local m1 = self:RegisterRangeMarkerOnPartyMember(12345, "party", playerName, 0.1, hudDuration, 0, 1, 0, 1, nil):Appear()
			local m2 = self:RegisterRangeMarkerOnPartyMember(12345, "party", targetName, 0.75, hudDuration, color2.r, color2.g, color2.b, 1, nil):Appear()
			tinsert(trackedHudMarkers, playerName)
			tinsert(trackedHudMarkers, targetName)
			m2:EdgeTo(m1, nil, hudDuration, 0, 1, 0, 1)
			DBM:AddMsg(L.HUD_SUCCESS:format(DBM:strFromTime(hudDuration)))
		elseif hudType == "dot" then
			local _, targetClass = UnitClass(uId)
			local color2 = RAID_CLASS_COLORS[targetClass]
			self:RegisterRangeMarkerOnPartyMember(12345, "party", targetName, 0.75, hudDuration, color2.r, color2.g, color2.b, 1, nil):Appear()
			tinsert(trackedHudMarkers, targetName)
			DBM:AddMsg(L.HUD_SUCCESS:format(DBM:strFromTime(hudDuration)))
		elseif hudType == "green" then
			self:RegisterRangeMarkerOnPartyMember(12345, "highlight", targetName, 3.5, hudDuration, 0, 1, 0, 0.5, nil):Pulse(0.5, 0.5)
			tinsert(trackedHudMarkers, targetName)
			DBM:AddMsg(L.HUD_SUCCESS:format(DBM:strFromTime(hudDuration)))
		elseif hudType == "red" then
			self:RegisterRangeMarkerOnPartyMember(12345, "highlight", targetName, 3.5, hudDuration, 1, 0, 0, 0.5, nil):Pulse(0.5, 0.5)
			tinsert(trackedHudMarkers, targetName)
			DBM:AddMsg(L.HUD_SUCCESS:format(DBM:strFromTime(hudDuration)))
		elseif hudType == "yellow" then
			self:RegisterRangeMarkerOnPartyMember(12345, "highlight", targetName, 3.5, hudDuration, 1, 1, 0, 0.5, nil):Pulse(0.5, 0.5)
			tinsert(trackedHudMarkers, targetName)
			DBM:AddMsg(L.HUD_SUCCESS:format(DBM:strFromTime(hudDuration)))
		elseif hudType == "blue" then
			self:RegisterRangeMarkerOnPartyMember(12345, "highlight", targetName, 3.5, hudDuration, 0, 0, 1, 0.5, nil):Pulse(0.5, 0.5)
			tinsert(trackedHudMarkers, targetName)
			DBM:AddMsg(L.HUD_SUCCESS:format(DBM:strFromTime(hudDuration)))
		elseif hudType == "icon" then
			local icon = GetRaidTargetIndex(uId)
			if not icon then
				DBM:AddMsg(L.HUD_INVALID_ICON)
				return
			end
			self:RegisterRangeMarkerOnPartyMember(12345, DBM:IconNumToString(icon):lower(), targetName, 3.5, hudDuration, 1, 1, 1, 0.5, nil):Pulse(0.5, 0.5)
			tinsert(trackedHudMarkers, targetName)
			DBM:AddMsg(L.HUD_SUCCESS:format(DBM:strFromTime(hudDuration)))
		else
			DBM:AddMsg(L.HUD_INVALID_TYPE)
		end
	end
end
