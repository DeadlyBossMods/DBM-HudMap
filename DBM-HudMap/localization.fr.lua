if GetLocale() ~= "frFR" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "Activer la HudMap"

L.NO_HUD 					= "HUDMap ne peut pas être utilisé dans les instances."
L.HUD_INVALID_TYPE			= "Type de HUD défini invalide"
L.HUD_INVALID_TARGET		= "Pas de cible valide disponible pour le HUD"
L.HUD_INVALID_SELF			= "Impossible de s'utiliser soi-même comme cible pour le HUD"
L.HUD_INVALID_ICON			= "Impossible d'utiliser la méthode par icône pour le HUD sans cible avec l'icône"
L.HUD_SUCCESS				= "Le HUD a démarré correctement avec vos paramètres. Ceci va s'arrêter dans %s, ou en tapant '/dbm hud hide'."
L.HUD_USAGE	= {
	"Utilisation de " .. CL.DBM .. "-HudMap:",
	"-----------------",
	"/dbm hud <type> <cible> <durée>: Crée un HUD qui indique un joueur pour la durée choisie",
	"Types valides : flèche, rouge, bleu, vert, jaune, icône (requiert une cible avec une icône de raid)",
	"Cibles valides : cible, focus, <nom du joueur>",
	"Durées valides : n'importe quel nombre (en secondes). Si laissé vide, il sera affiché pendant 20 min.",
	"/dbm hud hide:  désactive et cache le HUD"
}
