if GetLocale() ~= "koKR" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "HudMap 사용"

L.NO_HUD						= "HUD 기능을 인스턴스 던전에서 사용할 수 없습니다"
L.HUD_INVALID_TYPE			= "올바르지 않은 HUD 형식이 정의되었습니다"
L.HUD_INVALID_TARGET			= "HUD에 올바른 대상이 주어지지 않았습니다"
L.HUD_INVALID_SELF			= "자신을 HUD 대상으로 설정할 수 없습니다"
L.HUD_INVALID_ICON			= "공격대 징표가 없는 대상엔 징표 기반 HUD 기능을 사용할 수 없습니다"
L.HUD_SUCCESS				= "HUD가 입력한 정보를 표시하기 시작합니다. %s 후 자동으로 사라지며 '/dbm hud hide'를 입력하면 즉시 숨길 수 있습니다."
L.HUD_USAGE	= {
	CL.DBM .. " HUD 사용법:",
	"--------------------",
	"/dbm hud <형식> <대상> <지속 시간>: 지정한 시간 동안 대상을 가리키는 HUD를 생성",
	"유효한 형식: arrow, red, blue, green, yellow, icon (대상에게 공격대 징표가 설정되어 있어야 함)",
	"유효한 대상: target, focus, <대상이름>",
	"유효한 시간: 아무 숫자(초단위). 지정하지 않으면 20분간 적용됩니다.",
	"/dbm hud hide: 사용자가 생성한 HUD를 비활성화"
}
