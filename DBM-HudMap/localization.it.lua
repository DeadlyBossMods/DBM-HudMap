if GetLocale() ~= "itIT" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "Abilita HudMap"

L.NO_HUD			= "La HUDMap non può essere usata nelle istanze"
L.HUD_INVALID_TYPE		= "Tipo invalido di HUD definito"
L.HUD_INVALID_TARGET	= "Nessun bersaglio valido dato per l'HUD"
L.HUD_INVALID_SELF		= "Impossibile utilizzare se stessi come bersaglio HUD"
L.HUD_INVALID_ICON		= "Impossibile utilizzare l'icona per HUD su un bersaglio senza icona"
L.HUD_SUCCESS			= "HUD avviato con successo con i tuoi parametri. Verrà annullato dopo %s, o digitando '/dbm hud hide'."
L.HUD_USAGE				= {
	"Utilizzo di "..CL.DBM.."-HudMap:",
	"-----------------",
	"/dbm hud <tipo> <bersaglio> <durata>: Crea un HUD che punta al giocatore per la durata desiderata",
	"Tipi validi: arrow, dot, red, blue, green, yellow, icon (richiede un bersaglio con icona incursione)",
	"Bersagli validi: target, focus, <nomegiocatore>",
	"Durate valide: qualsiasi numero (in secondi). Se in bianco, verranno impostati 20 minuti.",
	"/dbm hud hide:  disabilita e nasconde l'HUD"
}
