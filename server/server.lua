local QBCore = exports['qb-core']:GetCoreObject()
RegisterNetEvent('QBCore:Server:UpdateObject', function() if source ~= '' then return false end QBCore = exports['qb-core']:GetCoreObject() end)

CreateThread(function()
	for i=1, 110, 1 do
		if QBCore.Shared.Items["chair"..i] then	QBCore.Functions.CreateUseableItem("chair"..i, function(source, item) TriggerClientEvent('jim-chairs:Use', source, item.name) end) end
	end
end)
