local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('tn-vehiclecatalogue.requestInfo')
AddEventHandler('tn-vehiclecatalogue.requestInfo', function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local rows    

    TriggerClientEvent('tn-vehiclecatalogue.receiveInfo', src, xPlayer.PlayerData.money['bank'], xPlayer.PlayerData.firstname)
    TriggerClientEvent("tn-vehiclecatalogue.notify", src, 'error', 'Use A and D To Rotate')
end)