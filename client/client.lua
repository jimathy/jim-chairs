local Targets, Peds, Blips, attachedChair = {}, {}, {}, nil

CreateThread(function()
	if Config.MakeStores then
		for k, v in pairs(Config.Stores) do
			Peds[#Peds+1] = makePed(v.info.ped.model, v.info.coords, 1, 1)
			SetEntityInvincible(Peds[#Peds], true)
			SetBlockingOfNonTemporaryEvents(Peds[#Peds], true)
			if v.info.showBlip then Blips[#Blips+1] = makeBlip({coords = v.info.coords, sprite = 478, col = 81, name = "Chair Store"}) end
			Targets["ChairStore"..k] =
				exports['qb-target']:AddCircleZone("ChairStore"..k, v.info.coords.xyz, 1.2, { name="ChairStore"..k, debugPoly=Config.Debug, useZ=true, },
				{ options = { { event = "jim-chairs:openShop", icon = "fas fa-chair", label = "Browse Store", store = v, ped = Peds[#Peds], shopname = "ChairStore"..k, coords = v.info.coords.xyz }, },
					distance = 2.0
				})
		end
	end
end)

--Chair Store Opening
RegisterNetEvent('jim-chairs:openShop', function(data)
	local event = "inventory:server:OpenInventory"
	if Config.JimShop then event = "jim-shops:ShopOpen"
	elseif Config.Inv == "ox" then  exports.ox_inventory:openInventory('shop', { type = data.shopname }) end
	TriggerServerEvent(event, "shop", "Chairs", data.store)
	lookEnt(data.coords)
end)

--CHAIR CONTROLLERS
function attachAChair(chairModel, x, y, z, xR, yR, zR)
	removeattachedChair()
	attachedChair = makeProp({prop = chairModel, coords = vec4(0.0,0.0,0.0,0.0)}, true, true)
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
RegisterNetEvent("jim-chairs:Use", function(item) local ped = PlayerPedId()
	if not HasItem("chair"..item) then return end
	local dict, anim = "timetable@ron@ig_3_couch", "base"
	if IsPedInAnyVehicle(ped, false) then triggerNotify(nil, "You can't use this while in a car", "error") return end
	if not haschairalready then haschairalready = true
		if Config.Debug then print("^5Debug^7: ^2Distance from floor^7: ^6"..GetEntityHeightAboveGround(ped)) end
		if GetEntityHeightAboveGround(ped) >= tonumber(Config.ExploitDistance) then return end
		FreezeEntityPosition(ped, true)
		local chairTable = {
			{ "v_corp_bk_chair1", 0, -0.2, -0.22, 8.4, -0.2, 190.0 },
			{ "v_corp_bk_chair2", 0, 0.0, -0.12, 5.4, 0.4, 190.0 },
			{ "v_corp_lazychair", 0, -0.1, -0.55, 12.4, 0.4, 190.0 },
			{ "v_corp_lazychairfd", 0, -0.1, -0.55, 12.4, 0.4, 190.0 },
			{ "v_corp_offchairfd", 0, 0.0, -0.52, 3.4, 0.4, 180.0 },
			{ "v_corp_sidechair", 0, -0.1, -0.62, 10.4, 0.4, 180.0 },
			{ "v_ilev_m_dinechair", 0, -0.1, -0.58, 8.4, 0.4, 180.0 },
			{ "v_res_d_armchair", 0, -0.2, -0.12, 8.4, 0.4, 180.0 },
			{ "v_res_fa_chair01", 0, -0.15, -0.35, 8.4, 0.4, 190.0 },
			{ "v_res_fh_barcchair", 0, -0.15, -0.56, 10.4, 0.4, 180.0 },
			{ "v_res_fh_easychair", 0, -0.15, -0.56, 10.4, 0.4, 180.0 },
			{ "v_res_j_dinechair", 0, -0.15, -0.56, 10.4, 0.4, 180.0 },
			{ "v_res_jarmchair", 0, -0.15, -0.56, 10.4, 0.4, 180.0 },
			{ "v_res_m_armchair", 0, -0.25, -0.56, 8.4, 0.4, 190.0 },
			{ "v_res_m_dinechair", 0, -0.15, -0.56, 8.4, 0.4, 180.0 },
			{ "v_res_mbchair", 0, -0.15, -0.56, 8.4, 0.4, 180.0 },
			{ "v_res_mp_stripchair", 0, -0.15, -0.56, 8.4, 0.4, 185.0 },
			{ "v_res_study_chair", 0, -0.05, -0.56, 8.4, 0.4, 185.0 },
			{ "v_res_tre_chair", 0, 0.0, -0.18, 8.4, 0.4, 180.0 },
			{ "v_res_tre_officechair", 0, 0.0, -0.12, 8.4, 0.4, 185.0 },
			{ "v_res_trev_framechair", 0, -0.18, -0.62, 8.4, 0.4, 185.0 },
			{ "v_ret_chair", 0, -0.12, -0.58, 10.4, 0.4, 185.0 },
			{ "v_ret_chair_white", 0, -0.12, -0.58, 10.4, 0.4, 185.0 },
			{ "v_ret_fh_chair01", 0, -0.12, -0.42, 8.4, 0.4, 185.0 },
			{ "v_ret_gc_chair02", 0, 0.0, -0.12, 10.4, 0.4, 180.0 },
			{ "v_serv_ct_chair02", 0, 0.0, -0.035, 10.4, 0.4, 180.0 },
			{ "prop_off_chair_01", 0, 0.0, -0.58, 8.4, 0.4, 180.0 },
			{ "prop_off_chair_03", 0, 0.0, -0.58, 8.4, 0.4, 185.0 },
			{ "prop_off_chair_04", 0, 0.0, -0.52, 8.4, 0.4, 185.0 },
			{ "prop_off_chair_04b", 0, -0.1, -0.52, 8.4, 0.4, 185.0 },
			{ "prop_off_chair_05", 0, 0.0, -0.52, 9.4, 0.4, 185.0 },
			{ "prop_sol_chair", 0, -0.1, -0.605, 8.4, 0.4, 185.0 },
			{ "v_club_officechair", 0, 0.0, -0.58, 9.4, 0.4, 185.0 },
			{ "v_corp_cd_chair", 0, 0.0, -0.62, 8.4, 0.4, 185.0 },
			{ "v_corp_offchair", 0, 0.0, -0.52, 8.4, 0.4, 185.0 },
			{ "v_ret_gc_chair03", 0, 0.0, 0.12, 9.4, 0.4, 185.0 },
			{ "prop_cs_office_chair", 0, -0.05, -0.58, 9.4, 0.4, 185.0 },
			{ "prop_rock_chair_01", 0, 0.0, -0.18, 8.4, 0.4, 185.0 },
			{ "p_yacht_chair_01_s", 0, -0.2, -0.02, 9.4, 0.4, 180.0 },
			{ "p_armchair_01_s", 0, -0.2, -0.55, 9.4, 0.4, 185.0 },
			{ "prop_chair_01a", 0, -0.15, -0.55, 8.4, 0.4, 185.0 },
			{ "prop_chair_01b", 0, -0.15, -0.62, 8.4, 0.4, 185.0 },
			{ "prop_chair_02", 0, -0.15, -0.62, 8.4, 0.4, 185.0 },
			{ "prop_chair_03", 0, -0.15, -0.62, 8.4, 0.4, 185.0 },
			{ "prop_chair_04a", 0, -0.15, -0.62, 8.4, 0.4, 185.0 },
			{ "prop_chair_04b", 0, -0.15, -0.62, 8.4, 0.4, 185.0 },
			{ "prop_chair_05", 0, -0.15, -0.58, 8.4, 0.4, 185.0 },
			{ "prop_chair_06", 0, -0.15, -0.58, 8.4, 0.4, 185.0 },
			{ "prop_chair_07", 0, -0.05, -0.58, 8.4, 0.4, 185.0 },
			{ "prop_chair_08", 0, 0.0, -0.1, 8.4, 0.4, 185.0 },
			{ "prop_chair_09", 0, -0.15, -0.58, 8.4, 0.4, 185.0 },
			{ "prop_chair_10", 0, -0.15, -0.58, 8.4, 0.4, 185.0 },
			{ "prop_chateau_chair_01", 0, -0.0, -0.1, 8.4, 0.4, 185.0 },
			{ "prop_old_wood_chair", 0, 0.0, -0.22, 3.4, 0.4, 180.0 },
			{ "v_club_barchair", 0, -0.05, -0.52, 9.4, 0.4, 180.0 },
			{ "v_club_ch_armchair", 0, -0.25, -0.55, 9.4, 0.4, 180.0 },
			{ "v_club_stagechair", 0, -0.25, -0.55, 9.4, 0.4, 180.0 },
			{ "v_club_vuarmchair", 0, -0.25, -0.55, 9.4, 0.4, 180.0 },
			{ "v_med_fabricchair1", 0, -0.1, -0.12, 9.4, 0.4, 180.0 },
			{ "v_med_p_deskchair", 0, -0.05, -0.55, 9.4, 0.4, 180.0 },
			{ "v_med_whickerchair1", 0, -0.05, -0.12, 9.4, 0.4, 180.0 },
			{ "prop_skid_chair_01", 0, -0.05, -0.18, 8.4, 0.4, 185.0 },
			{ "prop_skid_chair_02", 0, -0.05, -0.18, 8.4, 0.4, 185.0 },
			{ "prop_skid_chair_03", 0, -0.05, -0.18, 8.4, 0.4, 185.0 },
			{ "prop_armchair_01", 0, -0.2, -0.58, 7.4, 0.4, 185.0 },
			{ "prop_yaught_chair_01", 0, -0.2, -0.02, 9.4, 0.4, 185.0 },
		--MPAPARTMENT
			{ "apa_mp_h_din_chair_04", 0, -0.1, -0.60, 9.4, 0.4, 185.0 },
			{ "apa_mp_h_din_chair_08", 0, -0.1, -0.60, 9.4, 0.4, 185.0 },
			{ "apa_mp_h_din_chair_09", 0, 0.1, -0.60, 9.4, 0.4, 185.0 },
			{ "apa_mp_h_din_chair_12", 0, -0.1, -0.62, 8.4, 0.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_01", 0, -0.25, -0.58, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_02", 0, -0.60, -0.48, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_03", 0, -0.40, -0.52, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_09", 0, -0.40, -0.53, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_11", 0, -0.35, -0.53, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_12", 0, -0.15, -0.56, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_13", 0, -0.60, -0.48, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_23", 0, -0.15, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_24", 0, -0.55, -0.53, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_25", 0, -0.25, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairarm_26", 0, -0.70, -0.50, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstool_12", 0, -0.1, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstrip_01", 0, -0.25, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstrip_02", 0, -0.15, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstrip_03", 0, -0.15, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstrip_04", 0, -0.15, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstrip_05", 0, -0.15, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstrip_07", 0, -0.15, -0.58, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_stn_chairstrip_08", 0, -0.15, -0.58, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_yacht_armchair_01", 0, -0.25, -0.58, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_yacht_armchair_03", 0, -0.20, -0.55, 8.4, -1.4, 185.0 },
			{ "apa_mp_h_yacht_armchair_04", 0, -0.25, -0.58, 8.4, -1.4, 185.0 },
			--MPBATTLE
			{ "ba_prop_battle_club_chair_02", 0, -0.15, 0.05, 7.4, -1.4, 185.0 },
			{ "ba_prop_battle_club_chair_03", 0, -0.05, 0.05, 9.4, 0.4, 185.0 },
			--MPBIKER
			{ "bkr_prop_biker_chairstrip_01", 0, -0.20, -0.55, 8.4, -1.4, 185.0 },
			{ "bkr_prop_weed_chair_01a", 0, -0.10, -0.58, 8.4, -1.4, 185.0 },
			{ "bkr_prop_clubhouse_chair_03", 0, -0.10, -0.55, 8.4, -1.4, 185.0 },
		--MPCHRISTMAS2017
			{ "xm_prop_x17_avengerchair", 0, 0.0, 0.02, 9.4, -1.4, 185.0 },
			{ "xm_prop_x17_avengerchair_02", 0, -0.05, 0.05, 9.4, -1.4, 185.0 },
			{ "xm_int_lev_sub_chair_01", 0, -0.05, -0.58, 8.4, -1.4, 185.0 },
			{ "xm_lab_chairarm_26", 0, -0.68, -0.52, 8.4, -1.4, 185.0 },
		--MPHEIST
			{ "hei_heist_din_chair_02", 0, -0.05, -0.58, 9.4, -1.4, 185.0 },
			{ "hei_heist_din_chair_01", 0, -0.05, -0.62, 9.4, -1.4, 185.0 },
			{ "hei_heist_din_chair_06", 0, -0.05, -0.62, 9.4, -1.4, 185.0 },
			{ "hei_heist_din_chair_09", 0, -0.15, -0.58, 9.4, -1.4, 185.0 },
			{ "hei_heist_stn_chairarm_06", 0, -0.05, -0.55, 7.4, -1.4, 185.0 },
			{ "hei_heist_stn_chairstrip_01", 0, -0.05, -0.55, 7.4, -1.4, 185.0 },
		--MPHEIST3
			{ "ch_prop_casino_track_chair_01", 0, -0.05, -0.58, 8.4, -1.4, 185.0 },
		--MPHEIST4
			{ "h4_prop_h4_chair_01a", 0, -0.15, -0.02, 9.4, -1.4, 185.0 },
		--MPTUNER
			{ "tr_prop_tr_chair_01a", 0, -0.1, 0.02, 9.4, -1.4, 185.0 },
		}
		local chair = chairTable[item]
		attachAChair(chair[1], chair[2], chair[3], chair[4], chair[5], chair[6], chair[7])
		loadAnimDict(dict)
		TaskPlayAnim(ped, dict, anim, 1.0, 4.0, GetAnimDuration(dict, anim), 1, 0, 0, 0, 0)
	else
		haschairalready = false
		FreezeEntityPosition(ped,false)
		removeattachedChair()
		StopEntityAnim(ped, anim, dict, 3)
		unloadAnimDict(dict)
	end
end)

CreateThread(function()
	while true do
		if haschairalready and not IsEntityPlayingAnim(PlayerPedId(), "timetable@ron@ig_3_couch", "base", 3) then
			FreezeEntityPosition(PlayerPedId(),false)
			removeattachedChair()
			haschairalready = false
		end
		Wait(2000)
	end
end)

AddEventHandler('onResourceStop', function(r) if r ~= GetCurrentResourceName() then return end
	if GetResourceState("qb-target") == "started" or GetResourceState("ox_target") == "started" then
		for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
		for k in pairs(Peds) do unloadModel(GetEntityModel(Peds[k])) DeletePed(Peds[k]) end
		DeleteEntity(attachedChair)
		FreezeEntityPosition(PlayerPedId(),false)
		removeattachedChair()
		ClearPedTasks(PlayerPedId())
	end
end)