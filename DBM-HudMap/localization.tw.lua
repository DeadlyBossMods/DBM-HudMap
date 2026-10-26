if GetLocale() ~= "zhTW" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "啟用HudMap"

L.NO_HUD						= "HUDMap不能在副本中使用"
L.HUD_INVALID_TYPE			= "無效的HUD類型定義"
L.HUD_INVALID_TARGET		= "無有效的HUD目標"
L.HUD_INVALID_SELF			= "不能將HUD目标設定成自己"
L.HUD_INVALID_ICON			= "不能設定對無團隊標記的目標"
L.HUD_SUCCESS				= "HUD成功使用你的參數運作。這會在%s後取消，或是使用'/dbm hud hide'指令取消。"
L.HUD_USAGE	= {
	CL.DBM .. "-HudMap 用法:",
	"-----------------",
	"/dbm hud <類型> <目標> <持續時間>: 建立一個指向玩家的HUD",
	"有效類型: arrow, dot, red, blue, green, yellow, icon(需要團隊標記)",
	"有效目標: target, focus, <玩家名字>",
	"有效持續時間: 任何秒數。如果無輸入值則預設為20分鐘",
	"/dbm hud hide  停用玩家生成的HUD物件"
}
