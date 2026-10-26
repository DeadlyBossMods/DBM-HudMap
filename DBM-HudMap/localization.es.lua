if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "Activar HudMap"

L.NO_HUD					= "No se puede usar el indicador en pantalla en estancias."
L.HUD_INVALID_TYPE			= "No se ha proporcionado un tipo de indicador en pantalla válido."
L.HUD_INVALID_TARGET		= "No se ha proporcionado un objetivo válido."
L.HUD_INVALID_SELF			= "No puedes usarte a ti mismo como objetivo."
L.HUD_INVALID_ICON			= "No se puede usar el tipo icono en un objetivo sin icono."
L.HUD_SUCCESS				= "Indicador en pantalla realizado con éxito. Expirará en %s o al escribir '/dbm hud hide'."
L.HUD_USAGE	= {
	"Uso de " .. CL.DBM .. "-HudMap:",
	"-----------------",
	"/dbm hud <tipo> <objetivo> <duración>: Crea un indicador en pantalla que apunta al jugador objetivo durante el tiempo designado.",
	"Tipos válidos: arrow, dot, red, blue, green, yellow, icon (requiere un objetivo con icono de banda)",
	"Objetivos válidos: objetivo, enfoque, <nombre de jugador>",
	"Duraciones válidas: cualquier número (en segundos). Si se deja en blanco, durará 20 minutos.",
	"/dbm hud hide: cancela y oculta el indicador en pantalla."
}
