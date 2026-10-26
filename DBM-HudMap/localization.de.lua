if GetLocale() ~= "deDE" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "HudMap aktivieren"

L.NO_HUD					= "Die HudMap kann in Instanzen nicht genutzt werden."
L.HUD_INVALID_TYPE			= "Der angegebene Typ für die HudMap ist ungültig."
L.HUD_INVALID_TARGET			= "Es wurde kein gültiges Ziel für die HudMap angegeben."
L.HUD_INVALID_SELF			= "Die HudMap kann nicht auf dich selbst zeigen."
L.HUD_INVALID_ICON			= "Der Typ 'icon' für die HudMap kann nicht auf Ziele ohne gesetztem Schlachtzugzeichen angewendet werden."
L.HUD_SUCCESS				= "Die HudMap wurde erfolgreich mit deinen Parametern gestartet. Sie läuft nach %s aus oder zuvor durch Aufruf von '/dbm hud hide'."
L.HUD_USAGE	= {
	"Benutzung der "..CL.DBM.."-HudMap:",
	"-----------------",
	"/dbm hud <Typ> <Ziel> <Dauer>: Erzeugt eine HudMap, die für die gewünschte Dauer auf einen Spieler zeigt",
	"gültige Typen: arrow, dot, red, blue, green, yellow, icon (benötigt ein Ziel mit gesetztem Schlachtzugzeichen)",
	"gültige Ziele: target, focus, <Spielername>",
	"gültige Dauer: beliebige Zahl (in Sekunden). 20 Minuten, falls Dauer nicht angegeben.",
	"/dbm hud hide: Deaktiviert und versteckt die HudMap"
}
