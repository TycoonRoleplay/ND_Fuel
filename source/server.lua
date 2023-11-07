
QBCore = nil
CreateThread(function()
    repeat
        QBCore = exports["ND_Core"]:GetCoreObject()
        Wait(100)
    until QBCore ~= nil
end)

RegisterNetEvent("ND_Fuel:pay", function(amount)
    local player = source
    if amount > 0 then
        local PlayerData = QBCore.Functions.GetPlayer(player).PlayerData
        QBCore.Functions.RemoveMoney('cash', abs(amount), "Fuel Purchase")
        TriggerClientEvent("chat:addMessage", player, {
            color = {0, 255, 0},
            args = {"Success", "Paid: $" .. string.format("%.2f", amount) .. " for gas."}
        })
    end
end)

RegisterNetEvent("ND_Fuel:jerryCan", function(amount)
    local player = source
    if amount > 0 then
        local PlayerData = QBCore.Functions.GetPlayer(player).PlayerData
        QBCore.Functions.RemoveMoney('cash', abs(amount), "Fuel Purchase")
        TriggerClientEvent("chat:addMessage", player, {
            color = {0, 255, 0},
            args = {"Success", "Paid: $" .. amount .. " for gas."}
        })
    end
end)
