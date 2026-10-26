if GetLocale() ~= "ruRU" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "Включить HudMap"

L.NO_HUD							= "HUDMap не может быть использован в подземельях"
L.HUD_INVALID_TYPE					= "Задан неверный тип HUD"
L.HUD_INVALID_TARGET				= "Не задана допустимая цель для HUD"
L.HUD_INVALID_SELF					= "Невозможно использовать себя в качестве цели для HUD"
L.HUD_INVALID_ICON					= "Невозможно использовать метод иконки для HUD на цели, у которой нет метки"
L.HUD_SUCCESS						= "HUD успешно запущен с Вашими параметрами. Он будет отключён через %s или с помощью '/dbm hud hide'."
L.HUD_USAGE	= {
	"Использование " .. CL.DBM .. "-HudMap:",
	"-----------------",
	"/dbm hud <тип> <цель> <длительность>: создаёт HUD, который указывает на игрока в течение желаемого времени",
	"Возможные типы: arrow, dot, red, blue, green, yellow, icon (требуется цель с рейдовой меткой)",
	"Возможные цели: target, focus, <имя игрока>",
	"Длительность: любое число (в секундах). Если не задано, то используется 20 мин.",
	"/dbm hud hide: отключает и скрывает HUD"
}
