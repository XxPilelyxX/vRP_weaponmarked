local perms = true
local delay = 200
-------------------------------------------------
--                    Menu                     --
-------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(delay)
            for k,v in pairs(Config.Coords) do
                while GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), v.x, v.y, v.z, true) <= 2 do
                    delay = 1
                    Citizen.Wait(delay)
                    DrawMarker(27, v.x, v.y, v.z-0.8, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 0.2, 255, 31, 0, 150, false, true, 2, nil, nil, false)
                    DrawText3Ds(v.x, v.y, v.z, "~r~[E]~w~ For at åbne menu")
                    if IsControlJustPressed(1, 38) then
                        TriggerEvent("shopmarked:OpenShopMenu1")
                    end
                end
            end
            delay = 200
        end
end)

-------------------------------------------------
--                    MENU                     --
-------------------------------------------------

RegisterNetEvent("weaponshop:open")
AddEventHandler("weaponshop:open", function(open)
    if perms then
        TriggerEvent("shopmarked:OpenShopMenu1")
    end
  end
)

-------------------------------------------------
--                     UI                      --
-------------------------------------------------

RegisterNetEvent("shopmarked:OpenShopMenu1")
AddEventHandler("shopmarked:OpenShopMenu1", function ()
    SetNuiFocus(true, true)
    Citizen.Wait(100)
    SendNUIMessage({
        type = "openShopMenu1",
        weapon1 = Config.Weapon1pris,    
        weapon2 = Config.Weapon2pris,
        weapon3 = Config.Weapon3pris,
    })
end)

RegisterNetEvent("shopmarked:OpenShopMenu2")
AddEventHandler("shopmarked:OpenShopMenu2", function ()
    SetNuiFocus(true, true)
    Citizen.Wait(100)
    SendNUIMessage({
        type = "openShopMenu2",
        weapon4      = Config.Weapon4pris,    
        weapon5      = Config.Weapon5pris,
        weapon6      = Config.Weapon6pris,
    })
end)

RegisterNetEvent("shopmarked:OpenShopMenu3")
AddEventHandler("shopmarked:OpenShopMenu3", function ()
    SetNuiFocus(true, true)
    Citizen.Wait(100)
    SendNUIMessage({
        type = "openShopMenu3",
        weapon7      = Config.Weapon7pris,    
        weapon8      = Config.Weapon8pris,
        weapon9      = Config.Weapon9pris,
    })
end)

RegisterNUICallback("CloseMenu", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
end)

RegisterNUICallback("ChooseMenu1", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    TriggerEvent("shopmarked:OpenShopMenu1")
end)

RegisterNUICallback("ChooseMenu2", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    TriggerEvent("shopmarked:OpenShopMenu2")
end)

RegisterNUICallback("ChooseMenu3", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    TriggerEvent("shopmarked:OpenShopMenu3")
end)

RegisterNUICallback("ChooseWeapon1", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon1pris, weapon = Config.Weapon1}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon2", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon2pris, weapon = Config.Weapon2}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon3", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon2pris, weapon = Config.Weapon2}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon4", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon4pris, weapon = Config.Weapon4}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon5", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon5pris, weapon = Config.Weapon5}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon6", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon6pris, weapon = Config.Weapon6}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon7", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon7pris, weapon = Config.Weapon7}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon8", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon8pris, weapon = Config.Weapon8}
    TriggerServerEvent("betal:weapon", data)
end)

RegisterNUICallback("ChooseWeapon9", function (data, callback)
    SetNuiFocus(false, false)
    callback("ok")
    local data = {pris = Config.Weapon9pris, weapon = Config.Weapon9}
    TriggerServerEvent("betal:weapon", data)
end)

-------------------------------------------------
--                     3D                      --
-------------------------------------------------

function DrawText3Ds(x,y,z, text)
local onScreen,_x,_y=World3dToScreen2d(x,y,z)
local px,py,pz=table.unpack(GetGameplayCamCoords())
	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end
