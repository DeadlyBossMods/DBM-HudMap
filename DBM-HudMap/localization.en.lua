---@class DBMHudMapLocale
local L = {}
DBM_HUDMAP_L = L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "Enable HudMap"

L.NO_HUD								= "HUDMap can not be used in instances"
L.HUD_INVALID_TYPE						= "Invalid HUD type defined"
L.HUD_INVALID_TARGET					= "No valid target given for HUD"
L.HUD_INVALID_SELF						= "Cannot use self as target for HUD"
L.HUD_INVALID_ICON						= "Cannot use icon method for HUD on a target with no icon"
L.HUD_SUCCESS							= "HUD successful started with your parameters. This will cancel after %s, or by calling '/dbm hud hide'."
L.HUD_USAGE								= {
	CL.DBM .. "-HudMap usage:",
	"-----------------",
	"/dbm hud <type> <target> <duration>: Creates a HUD that points to a player for the desired duration",
	"Valid types: arrow, dot, red, blue, green, yellow, icon (requires a target with raid icon)",
	"Valid targets: target, focus, <playername>",
	"Valid durations: any number (in seconds). If left blank, 20min will be used.",
	"/dbm hud hide: disables user generated HUD objects"
}
