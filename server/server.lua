local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
	for i=1, 110, 1 do
		QBCore.Functions.CreateUseableItem("chair"..i, function(source, item)
			TriggerClientEvent('jim-chairs:Use', source, item.name)
		end)
	end
end)