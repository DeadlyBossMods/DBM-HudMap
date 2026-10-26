if GetLocale() ~= "ptBR" then return end

local L = DBM_HUDMAP_L
local CL = DBM_CORE_L

L.Panel_HudMap					= "HudMap"
L.EnableHudMap					= "Ativar HudMap"

L.NO_HUD 							= "O HUDMap não pode ser usado em instâncias."
L.HUD_INVALID_TYPE 						= "Tipo de HUD definido inválido"
L.HUD_INVALID_TARGET 					= "Nenhum alvo válido fornecido para o HUD"
L.HUD_INVALID_SELF 						= "Não é possível usar o próprio jogador como alvo para o HUD"
L.HUD_INVALID_ICON 						= "Não é possível usar o método de ícone para o HUD em um alvo sem ícone"
L.HUD_SUCCESS 							= "HUD iniciado com sucesso com seus parâmetros. Isso será cancelado após %s, ou digite '/dbm hud hide'."
L.HUD_USAGE								= {
	CL.DBM .. "-HudMap uso:",
	"-----------------",
"/dbm hud <tipo> <alvo> <duração>: Cria um HUD que aponta para um jogador pelo tempo desejado",
 "Tipos válidos: seta, ponto, vermelho, azul, verde, amarelo, ícone (requer um alvo com ícone de raide)",
 "Alvos válidos: alvo, foco, <nome do jogador>",
 "Durações válidas: qualquer número (em segundos). Se deixado em branco, será utilizado 20 minutos.",
 "/dbm hud hide: desativa objetos de HUD gerados pelo usuário"
}
