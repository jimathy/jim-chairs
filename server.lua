onResourceStart(function()

	for _, v in pairs(Stores) do
		registerShop("ChairStore_"..v.label, v.label, v.items, nil, v.info.coords.xyz)
	end

	for i = 1, 110, 1 do
		if Items["chair"..i] then
			createUseableItem("chair"..i, function(source)
				TriggerClientEvent(getScript()..":client:Use", source, i)
			end)
		end
	end

end, true)