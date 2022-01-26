local QBCore = exports['qb-core']:GetCoreObject()

local chairs = {}

CreateThread(function()
	for i=1, 110, 1 do
		chairs[#chairs+1] = "chair"..i
	end
    for k,v in pairs(chairs) do
       QBCore.Functions.CreateUseableItem(v, function(source, item) TriggerClientEvent('jim-chairs:Use', source, item.name) end)
	end
end)
