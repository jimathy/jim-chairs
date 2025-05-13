local attachedChair

onPlayerLoaded(function()
	if Config.General.MakeStores then
		for k, v in pairs(Stores) do
			makeDistPed(v.info.ped.model, v.info.coords, 1, 1, v.info.ped.scenario)
			if v.info.showBlip then
				makeBlip({
					coords = v.info.coords,
					sprite = 478,
					col = 81,
					name = "Chair Store"
				})
			end
			createCircleTarget( { "ChairStore"..k, v.info.coords.xyz, 1.2,
					{
						name = "ChairStore"..k,
						debugPoly = debugMode,
					},
				}, {
				{
					action = function()
						openShop({ shop = "ChairStore_"..v.label, items = v, coords = v.info.coords.xyz })
					end,
					icon = "fas fa-chair",
					label = locale("targets", "browse"),
				},
			}, 2.0)
		end
	end
end, true)

--CHAIR CONTROLLERS
RegisterNetEvent(getScript()..":client:Use", function(data)
	jsonPrint(data)
	local item = type(data) == "table" and data.client.item or data
	local ped = PlayerPedId()
	if not hasItem("chair"..item, 1) then
		return
	end
	local dict, anim = "timetable@ron@ig_3_couch", "base"
	if IsPedInAnyVehicle(ped, false) then
		triggerNotify(nil, locale("notify", "carCant"), "error")
		return
	end
	if not haschairalready then
		haschairalready = true
		debugPrint("^5Debug^7: ^2Distance from floor^7: ^6"..GetEntityHeightAboveGround(ped))
		if GetEntityHeightAboveGround(ped) >= tonumber(Config.General.ExploitDistance) then
			return
		end
		FreezeEntityPosition(ped, true)

		local chair = chairOffsets[item]
		playAnim(dict, anim, GetAnimDuration(dict, anim), 1)

		attachAChair(chair[1], chair[2], chair[3], chair[4], chair[5], chair[6], chair[7])
		StartChairLoop()
	else
		haschairalready = false
		FreezeEntityPosition(ped, false)
		removeattachedChair()
		stopAnim(dict, anim)
	end
end)

function attachAChair(chairModel, x, y, z, xR, yR, zR)
	removeattachedChair()
	attachedChair = makeProp({ prop = chairModel, coords = vec4(0.0, 0.0, 0.0, 0.0) }, true, true)
	Wait(400)
	AttachEntityToEntity(attachedChair, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0), x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
end

function removeattachedChair()
	if attachedChair then
		unloadModel(GetEntityModel(attachedChair))
		destroyProp(attachedChair)
		attachedChair = nil
	end
end

function StartChairLoop()
	CreateThread(function()
		while haschairalready do
			if haschairalready and not IsEntityPlayingAnim(PlayerPedId(), "timetable@ron@ig_3_couch", "base", 3) then
				FreezeEntityPosition(PlayerPedId(), false)
				removeattachedChair()
				haschairalready = false
			end
			Wait(2000)
		end
		debugPrint("^5Debug^7: ^2Chair Loop broken^7.")
	end)
end

onResourceStop(function()
	DeleteEntity(attachedChair)
	FreezeEntityPosition(PlayerPedId(), false)
	removeattachedChair()
	ClearPedTasks(PlayerPedId())
end, true)