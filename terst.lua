queueteleport =  queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
local Players = game:GetService("Players")

getgenv().pet_sniper_config = {
    search_mode = "rarity", -- "rarity" or "name"

    search_terms = {
        ["Basic"] = false,
        ["Rare"] = false, 
        ["Epic"] = false,
        ["Legendary"] = false,
        ["Mythical"] = false,
        ["Divine"] = false,
        ["Secret"] = true,
        ["Exclusive"] = true,
    },

    target_pets = {
        ["Inferno Cat"] = {enabled = false},
    },

    max_server_players = 5,
    max_hop_attempts = 3,
    webhook_url = "https://discord.com/api/webhooks/1133571836358164490/puY-TWHNL-mpifxq-L6kG11PpIUiaDNuiEF5k5XPDmFGm-eywuRajJZflmY4TL3AJYVZ",
    webhook_timeout = 30,
    scan_delay = 0.05, 
    hop_retry_delay = 1,
    keep_hopping_after_find = false,
    hop_delay_after_find = 3,
}
script_key="fhKdxsdyFUgncoecIteaVVTvYCTXzSGY";
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/c24e31186beff7519651ada26f5ad7bb.lua"))()

local Keep =  true
local TeleportCheck = false

Players.LocalPlayer.OnTeleport:Connect(function(State)
	if KeepInfYield and not TeleportCheck and queue_on_teleport then
		TeleportCheck = true

		local scriptUrl = "https://raw.githubusercontent.com/startgoogle/cool/refs/heads/main/terst.lua"
		local queuedCode = 'loadstring(game:HttpGet("' .. scriptUrl .. '"))()'

		queueteleport(queuedCode)
	end
end)
