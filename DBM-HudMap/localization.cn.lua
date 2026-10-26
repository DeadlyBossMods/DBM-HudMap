if GetLocale() ~= "zhCN" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "启用 HudMap"

L.NO_HUD					= "HUDMap 在副本中无法使用"
L.HUD_INVALID_TYPE				= "无效的HUD类型"
L.HUD_INVALID_TARGET				= "没有给定HUD目标"
L.HUD_INVALID_SELF				= "不能把自己设定成HUD目标"
L.HUD_INVALID_ICON				= "当使用团队标记作为HUD目标定义时，不能定义一个没有团队标记的目标"
L.HUD_SUCCESS					= "HUD成功地使用了你的参数启动了。HUD会在%s关闭, 或者输入 '/dbm hud hide'来关闭"
L.HUD_USAGE	= {
	CL.DBM .. "-HudMap 可用命令：",
	"-----------------",
	"/dbm hud <类型> <目标> <持续时间> 新建一个指向玩家的HUD指示器",
	"变量-类型: arrow, dot, red, blue, green, yellow, icon (请输入英语。需要相应的带团队标记的目标。)",
	"变量-目标: target, focus, <玩家名字> (如果是玩家名字是拉丁字母请区分大小写)",
	"变量-持续时间: 秒数. 如果这个参数留空, 默认为20分钟",
	"/dbm hud hide: 清空并关闭HUD"
}
