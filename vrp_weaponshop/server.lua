local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
MySQL = module("vrp_mysql", "MySQL")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_weaponshop")

-------------------------------------------------------------------------------
-- Tjekker Gruppe
-------------------------------------------------------------------------------

RegisterNetEvent("weaponshop:enter")
AddEventHandler("weaponshop:enter", function()
	local source = source
	local user_id = vRP.getUserId({source})
		if vRP.hasGroup({user_id, "Kriminel"}) then
            TriggerClientEvent("weaponshop:open", source, true)
		else
			TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har er ikke kriminel.", type = "error", queue = "global", timeout = 12000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
		end
end)
-------------------------------------------------------------------------------
-- Betal funktion side 1
-------------------------------------------------------------------------------

RegisterNetEvent("betal:weapon")
AddEventHandler("betal:weapon", function(data)
	local source = source
	local user_id = vRP.getUserId({source})
	local amount = data.pris
	local weapon = data.weapon
	if vRP.getBankMoney({user_id}) >= amount then
		vRP.giveInventoryItem({user_id,weapon,1})
		vRP.tryFullPayment({user_id,amount})
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har nu købt en "..weapon.." for "..amount.."DKK.", type = "success", queue = "global", timeout = 12000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	else
		TriggerClientEvent("pNotify:SendNotification", source,{text = "Du har ikke penge nok.", type = "error", queue = "global", timeout = 12000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
	end
end)