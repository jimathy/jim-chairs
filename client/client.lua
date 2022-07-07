local QBCore = exports['qb-core']:GetCoreObject()
local Targets = {}
local Peds = {}
local Blips = {}
local attachedChair = nil

--Custom Events
function loadAnimDict(dict) if Config.Debug then print("Debug: Loading Anim Dictionary: '"..dict.."'") end while not HasAnimDictLoaded(dict) do RequestAnimDict(dict) Wait(0) end end
function unloadAnimDict(dict) if Config.Debug then print("Debug: Removing Anim Dictionary: '"..dict.."'") end RemoveAnimDict(dict) end
function loadModel(model) if Config.Debug then print("Debug: Loading Model: '"..model.."'") end RequestModel(model) while not HasModelLoaded(model) do Wait(0) end end
function unloadModel(model) if Config.Debug then print("Debug: Removing Model: '"..model.."'") end SetModelAsNoLongerNeeded(model) end
function destroyProp(entity) if Config.Debug then print("Debug: Destroying Prop: '"..entity.."'") end SetModelAsNoLongerNeeded(GetEntityModel(entity)) SetEntityAsMissionEntity(entity) Wait(5) DetachEntity(entity, true, true) Wait(5) DeleteObject(entity) end
function conVector3(vector4) return vector3(vector4.x, vector4.y, vector4.z) end

CreateThread(function()
	if Config.MakeStores then
		for k, v in pairs(Config.Stores) do
			if Config.Debug then print("Creating Ped for store: ['"..v.label.."']") end
			loadModel(v.info.ped.model)
			Peds[#Peds+1] = CreatePed(5, v.info.ped.model, v.info.coords.x, v.info.coords.y, v.info.coords.z-1.03, v.info.coords[4], false, true)
			SetEntityInvincible(Peds[#Peds], true)
			SetBlockingOfNonTemporaryEvents(Peds[#Peds], true)
			FreezeEntityPosition(Peds[#Peds], true)

			if v.info.showBlip then
				if Config.Debug then print("Creating Map Blip for store: ['"..v.label.."']") end
				Blips[#Blips+1] = AddBlipForCoord(v.info.coords)
				SetBlipAsShortRange(Blips[#Blips], true)
				SetBlipSprite(Blips[#Blips], 478)
				SetBlipColour(Blips[#Blips], 81)
				SetBlipScale(Blips[#Blips], 0.7)
				SetBlipDisplay(Blips[#Blips], 6)
				BeginTextCommandSetBlipName('STRING')
				AddTextComponentString("Chair Store")
				EndTextCommandSetBlipName(Blips[#Blips])
			end
			if Config.Debug then print("Creating Ped for store: ['"..v.label.."']") end
			Targets["ChairStore"..k] =
			exports['qb-target']:AddCircleZone("ChairStore"..k, conVector3(v.info.coords), 1.2, { name="ChairStore"..k, debugPoly=Config.Debug, useZ=true, },
			{ options = { { event = "jim-chairs:openShop", icon = "fas fa-chair", label = "Browse Store", store = v }, },
				distance = 2.0
			})
		end
	end
end)

--Chair Store Opening
RegisterNetEvent('jim-chairs:openShop', function(data)
	if Config.JimShops then	TriggerServerEvent("jim-shops:ShopOpen", "shop", "Chairs", data.store)
	else TriggerServerEvent("inventory:server:OpenInventory", "shop", "Chairs", data.store)
	end
end)


--CHAIR CONTROLLERS
function attachAChair(chairModel, x, y, z, xR, yR, zR)
	removeattachedChair()
	loadModel(chairModel)
	attachedChair = CreateObject(chairModel, 1.0, 1.0, 1.0, 1, 1, 0)
	AttachEntityToEntity(attachedChair, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 0), x, y, z, xR, yR, zR, 1, 1, 0, 0, 2, 1)
end
function removeattachedChair()
	if attachedChair then
		unloadModel(GetEntityModel(attachedChair))
		destroyProp(attachedChair)
		attachedChair = nil
	end
end
RegisterNetEvent("jim-chairs:Use", function(item)
	if IsPedInAnyVehicle(PlayerPedId(), false) then TriggerEvent("QBCore:Notify", "You can't use this while in a car", "error") return end
	local dict = "timetable@ron@ig_3_couch"
	local anim = "base"
	if not haschairalready then
		haschairalready = true
		if Config.Debug then print("Distance from floor: "..GetEntityHeightAboveGround(PlayerPedId())) end
		if GetEntityHeightAboveGround(PlayerPedId()) >= tonumber(Config.ExploitDistance) then return end

		FreezeEntityPosition(PlayerPedId(), true)
		if item == "chair1" then attachAChair(`v_corp_bk_chair1`, 0, -0.2, -0.22, 8.4, -0.2, 190.0)
		elseif item == "chair2" then attachAChair(`v_corp_bk_chair2`, 0, 0.0, -0.12, 5.4, 0.4, 190.0)
		elseif item == "chair3" then attachAChair(`v_corp_lazychair`, 0, -0.1, -0.55, 12.4, 0.4, 190.0)
		elseif item == "chair4" then attachAChair(`v_corp_lazychairfd`, 0, -0.1, -0.55, 12.4, 0.4, 190.0)
		elseif item == "chair5" then attachAChair(`v_corp_offchairfd`, 0, 0.0, -0.52, 3.4, 0.4, 180.0)
		elseif item == "chair6" then attachAChair(`v_corp_sidechair`, 0, -0.1, -0.62, 10.4, 0.4, 180.0)
		elseif item == "chair7" then attachAChair(`v_ilev_m_dinechair`, 0, -0.1, -0.58, 8.4, 0.4, 180.0)
		elseif item == "chair8" then attachAChair(`v_res_d_armchair`, 0, -0.2, -0.12, 8.4, 0.4, 180.0)
		elseif item == "chair9" then attachAChair(`v_res_fa_chair01`, 0, -0.15, -0.35, 8.4, 0.4, 190.0)
		elseif item == "chair10" then attachAChair(`v_res_fh_barcchair`, 0, -0.15, -0.56, 10.4, 0.4, 180.0)
		elseif item == "chair11" then attachAChair(`v_res_fh_easychair`, 0, -0.15, -0.56, 10.4, 0.4, 180.0)
		elseif item == "chair12" then attachAChair(`v_res_j_dinechair`, 0, -0.15, -0.56, 10.4, 0.4, 180.0)
		elseif item == "chair13" then attachAChair(`v_res_jarmchair`, 0, -0.15, -0.56, 10.4, 0.4, 180.0)
		elseif item == "chair14" then attachAChair(`v_res_m_armchair`, 0, -0.25, -0.56, 8.4, 0.4, 190.0)
		elseif item == "chair15" then attachAChair(`v_res_m_dinechair`, 0, -0.15, -0.56, 8.4, 0.4, 180.0)
		elseif item == "chair16" then attachAChair(`v_res_mbchair`, 0, -0.15, -0.56, 8.4, 0.4, 180.0)
		elseif item == "chair17" then attachAChair(`v_res_mp_stripchair`, 0, -0.15, -0.56, 8.4, 0.4, 185.0)
		elseif item == "chair18" then attachAChair(`v_res_study_chair`, 0, -0.05, -0.56, 8.4, 0.4, 185.0)
		elseif item == "chair19" then attachAChair(`v_res_tre_chair`, 0, 0.0, -0.18, 8.4, 0.4, 180.0)
		elseif item == "chair20" then attachAChair(`v_res_tre_officechair`, 0, 0.0, -0.12, 8.4, 0.4, 185.0)
		elseif item == "chair21" then attachAChair(`v_res_trev_framechair`, 0, -0.18, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair22" then attachAChair(`v_ret_chair`, 0, -0.12, -0.58, 10.4, 0.4, 185.0)
		elseif item == "chair23" then attachAChair(`v_ret_chair_white`, 0, -0.12, -0.58, 10.4, 0.4, 185.0)
		elseif item == "chair24" then attachAChair(`v_ret_fh_chair01`, 0, -0.12, -0.42, 8.4, 0.4, 185.0)
		elseif item == "chair25" then attachAChair(`v_ret_gc_chair02`, 0, 0.0, -0.12, 10.4, 0.4, 180.0)
		elseif item == "chair26" then attachAChair(`v_serv_ct_chair02`, 0, 0.0, -0.035, 10.4, 0.4, 180.0)
		elseif item == "chair27" then attachAChair(`prop_off_chair_01`, 0, 0.0, -0.58, 8.4, 0.4, 180.0)
		elseif item == "chair28" then attachAChair(`prop_off_chair_03`, 0, 0.0, -0.58, 8.4, 0.4, 185.0)
		elseif item == "chair29" then attachAChair(`prop_off_chair_04`, 0, 0.0, -0.52, 8.4, 0.4, 185.0)
		elseif item == "chair30" then attachAChair(`prop_off_chair_04b`, 0, -0.1, -0.52, 8.4, 0.4, 185.0)
		elseif item == "chair31" then attachAChair(`prop_off_chair_05`, 0, 0.0, -0.52, 9.4, 0.4, 185.0)
		elseif item == "chair32" then attachAChair(`prop_sol_chair`, 0, -0.1, -0.605, 8.4, 0.4, 185.0)
		elseif item == "chair33" then attachAChair(`v_club_officechair`, 0, 0.0, -0.58, 9.4, 0.4, 185.0)
		elseif item == "chair34" then attachAChair(`v_corp_cd_chair`, 0, 0.0, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair35" then attachAChair(`v_corp_offchair`, 0, 0.0, -0.52, 8.4, 0.4, 185.0)
		elseif item == "chair36" then attachAChair(`v_ret_gc_chair03`, 0, 0.0, 0.12, 9.4, 0.4, 185.0)
		elseif item == "chair37" then attachAChair(`prop_cs_office_chair`, 0, -0.05, -0.58, 9.4, 0.4, 185.0)
		elseif item == "chair38" then attachAChair(`prop_rock_chair_01`, 0, 0.0, -0.18, 8.4, 0.4, 185.0)
		elseif item == "chair39" then attachAChair(`p_yacht_chair_01_s`, 0, -0.2, -0.02, 9.4, 0.4, 180.0)
		elseif item == "chair40" then attachAChair(`p_armchair_01_s`, 0, -0.2, -0.55, 9.4, 0.4, 185.0)
		elseif item == "chair41" then attachAChair(`prop_chair_01a`, 0, -0.15, -0.55, 8.4, 0.4, 185.0)
		elseif item == "chair42" then attachAChair(`prop_chair_01b`, 0, -0.15, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair43" then attachAChair(`prop_chair_02`, 0, -0.15, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair44" then attachAChair(`prop_chair_03`, 0, -0.15, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair45" then attachAChair(`prop_chair_04a`, 0, -0.15, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair46" then attachAChair(`prop_chair_04b`, 0, -0.15, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair47" then attachAChair(`prop_chair_05`, 0, -0.15, -0.58, 8.4, 0.4, 185.0)
		elseif item == "chair48" then attachAChair(`prop_chair_06`, 0, -0.15, -0.58, 8.4, 0.4, 185.0)
		elseif item == "chair49" then attachAChair(`prop_chair_07`, 0, -0.05, -0.58, 8.4, 0.4, 185.0)
		elseif item == "chair50" then attachAChair(`prop_chair_08`, 0, 0.0, -0.1, 8.4, 0.4, 185.0)
		elseif item == "chair51" then attachAChair(`prop_chair_09`, 0, -0.15, -0.58, 8.4, 0.4, 185.0)
		elseif item == "chair52" then attachAChair(`prop_chair_10`, 0, -0.15, -0.58, 8.4, 0.4, 185.0)
		elseif item == "chair53" then attachAChair(`prop_chateau_chair_01`, 0, -0.0, -0.1, 8.4, 0.4, 185.0)
		elseif item == "chair54" then attachAChair(`prop_old_wood_chair`, 0, 0.0, -0.22, 3.4, 0.4, 180.0)
		elseif item == "chair55" then attachAChair(`v_club_barchair`, 0, -0.05, -0.52, 9.4, 0.4, 180.0)
		elseif item == "chair56" then attachAChair(`v_club_ch_armchair`, 0, -0.25, -0.55, 9.4, 0.4, 180.0)
		elseif item == "chair57" then attachAChair(`v_club_stagechair`, 0, -0.25, -0.55, 9.4, 0.4, 180.0)
		elseif item == "chair58" then attachAChair(`v_club_vuarmchair`, 0, -0.25, -0.55, 9.4, 0.4, 180.0)
		elseif item == "chair59" then attachAChair(`v_med_fabricchair1`, 0, -0.1, -0.12, 9.4, 0.4, 180.0)
		elseif item == "chair60" then attachAChair(`v_med_p_deskchair`, 0, -0.05, -0.55, 9.4, 0.4, 180.0)
		elseif item == "chair61" then attachAChair(`v_med_whickerchair1`, 0, -0.05, -0.12, 9.4, 0.4, 180.0)
		elseif item == "chair62" then attachAChair(`prop_skid_chair_01`, 0, -0.05, -0.18, 8.4, 0.4, 185.0)
		elseif item == "chair63" then attachAChair(`prop_skid_chair_02`, 0, -0.05, -0.18, 8.4, 0.4, 185.0)
		elseif item == "chair64" then attachAChair(`prop_skid_chair_03`, 0, -0.05, -0.18, 8.4, 0.4, 185.0)
		elseif item == "chair65" then attachAChair(`prop_armchair_01`, 0, -0.2, -0.58, 7.4, 0.4, 185.0)
		elseif item == "chair66" then attachAChair(`prop_yaught_chair_01`, 0, -0.2, -0.02, 9.4, 0.4, 185.0)
		--MPAPARTMENT
		elseif item == "chair67" then attachAChair(`apa_mp_h_din_chair_04`, 0, -0.1, -0.60, 9.4, 0.4, 185.0)
		elseif item == "chair68" then attachAChair(`apa_mp_h_din_chair_08`, 0, -0.1, -0.60, 9.4, 0.4, 185.0)
		elseif item == "chair69" then attachAChair(`apa_mp_h_din_chair_09`, 0, 0.1, -0.60, 9.4, 0.4, 185.0)
		elseif item == "chair70" then attachAChair(`apa_mp_h_din_chair_12`, 0, -0.1, -0.62, 8.4, 0.4, 185.0)
		elseif item == "chair71" then attachAChair(`apa_mp_h_stn_chairarm_01`, 0, -0.25, -0.58, 8.4, -1.4, 185.0)
		elseif item == "chair72" then attachAChair(`apa_mp_h_stn_chairarm_02`, 0, -0.60, -0.48, 8.4, -1.4, 185.0)
		elseif item == "chair73" then attachAChair(`apa_mp_h_stn_chairarm_03`, 0, -0.40, -0.52, 8.4, -1.4, 185.0)
		elseif item == "chair74" then attachAChair(`apa_mp_h_stn_chairarm_09`, 0, -0.40, -0.53, 8.4, -1.4, 185.0)
		elseif item == "chair75" then attachAChair(`apa_mp_h_stn_chairarm_11`, 0, -0.35, -0.53, 8.4, -1.4, 185.0)
		elseif item == "chair76" then attachAChair(`apa_mp_h_stn_chairarm_12`, 0, -0.15, -0.56, 8.4, -1.4, 185.0)
		elseif item == "chair77" then attachAChair(`apa_mp_h_stn_chairarm_13`, 0, -0.60, -0.48, 8.4, -1.4, 185.0)
		elseif item == "chair78" then attachAChair(`apa_mp_h_stn_chairarm_23`, 0, -0.15, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair79" then attachAChair(`apa_mp_h_stn_chairarm_24`, 0, -0.55, -0.53, 8.4, -1.4, 185.0)
		elseif item == "chair80" then attachAChair(`apa_mp_h_stn_chairarm_25`, 0, -0.25, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair81" then attachAChair(`apa_mp_h_stn_chairarm_26`, 0, -0.70, -0.50, 8.4, -1.4, 185.0)
		elseif item == "chair82" then attachAChair(`apa_mp_h_stn_chairstool_12`, 0, -0.1, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair83" then attachAChair(`apa_mp_h_stn_chairstrip_01`, 0, -0.25, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair84" then attachAChair(`apa_mp_h_stn_chairstrip_02`, 0, -0.15, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair85" then attachAChair(`apa_mp_h_stn_chairstrip_03`, 0, -0.15, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair86" then attachAChair(`apa_mp_h_stn_chairstrip_04`, 0, -0.15, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair87" then attachAChair(`apa_mp_h_stn_chairstrip_05`, 0, -0.15, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair88" then attachAChair(`apa_mp_h_stn_chairstrip_07`, 0, -0.15, -0.58, 8.4, -1.4, 185.0)
		elseif item == "chair89" then attachAChair(`apa_mp_h_stn_chairstrip_08`, 0, -0.15, -0.58, 8.4, -1.4, 185.0)
		elseif item == "chair90" then attachAChair(`apa_mp_h_yacht_armchair_01`, 0, -0.25, -0.58, 8.4, -1.4, 185.0)
		elseif item == "chair91" then attachAChair(`apa_mp_h_yacht_armchair_03`, 0, -0.20, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair92" then attachAChair(`apa_mp_h_yacht_armchair_04`, 0, -0.25, -0.58, 8.4, -1.4, 185.0)
		--MPBATTLE
		elseif item == "chair93" then attachAChair(`ba_prop_battle_club_chair_02`, 0, -0.15, 0.05, 7.4, -1.4, 185.0)
		elseif item == "chair94" then attachAChair(`ba_prop_battle_club_chair_03`, 0, -0.05, 0.05, 9.4, 0.4, 185.0)
		--MPBIKER
		elseif item == "chair95" then attachAChair(`bkr_prop_biker_chairstrip_01`, 0, -0.20, -0.55, 8.4, -1.4, 185.0)
		elseif item == "chair96" then attachAChair(`bkr_prop_weed_chair_01a`, 0, -0.10, -0.58, 8.4, -1.4, 185.0)
		elseif item == "chair97" then attachAChair(`bkr_prop_clubhouse_chair_03`, 0, -0.10, -0.55, 8.4, -1.4, 185.0)
		--MPCHRISTMAS2017
		elseif item == "chair98" then attachAChair(`xm_prop_x17_avengerchair`, 0, 0.0, 0.02, 9.4, -1.4, 185.0)
		elseif item == "chair99" then attachAChair(`xm_prop_x17_avengerchair_02`, 0, -0.05, 0.05, 9.4, -1.4, 185.0)
		elseif item == "chair100" then attachAChair(`xm_int_lev_sub_chair_01`, 0, -0.05, -0.58, 8.4, -1.4, 185.0)
		elseif item == "chair101" then attachAChair(`xm_lab_chairarm_26`, 0, -0.68, -0.52, 8.4, -1.4, 185.0)
		--MPHEIST
		elseif item == "chair102" then attachAChair(`hei_heist_din_chair_02`, 0, -0.05, -0.58, 9.4, -1.4, 185.0)
		elseif item == "chair103" then attachAChair(`hei_heist_din_chair_01`, 0, -0.05, -0.62, 9.4, -1.4, 185.0)
		elseif item == "chair104" then attachAChair(`hei_heist_din_chair_06`, 0, -0.05, -0.62, 9.4, -1.4, 185.0)
		elseif item == "chair105" then attachAChair(`hei_heist_din_chair_09`, 0, -0.15, -0.58, 9.4, -1.4, 185.0)
		elseif item == "chair106" then attachAChair(`hei_heist_stn_chairarm_06`, 0, -0.05, -0.55, 7.4, -1.4, 185.0)
		elseif item == "chair107" then attachAChair(`hei_heist_stn_chairstrip_01`, 0, -0.05, -0.55, 7.4, -1.4, 185.0)
		--MPHEIST3
		elseif item == "chair108" then attachAChair(`ch_prop_casino_track_chair_01`, 0, -0.05, -0.58, 8.4, -1.4, 185.0)
		--MPHEIST4
		elseif item == "chair109" then attachAChair(`h4_prop_h4_chair_01a`, 0, -0.15, -0.02, 9.4, -1.4, 185.0)
		--MPTUNER
		elseif item == "chair110" then attachAChair(`tr_prop_tr_chair_01a`, 0, -0.1, 0.02, 9.4, -1.4, 185.0) end
		loadAnimDict(dict)
		TaskPlayAnim(PlayerPedId(), dict, anim, 1.0, 4.0, GetAnimDuration(dict, anim), 1, 0, 0, 0, 0)
	else
		haschairalready = false
		FreezeEntityPosition(PlayerPedId(),false)
		removeattachedChair()
		StopEntityAnim(PlayerPedId(), anim, dict, 3)
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

AddEventHandler('onResourceStop', function(resource) if resource ~= GetCurrentResourceName() then return end
	for k in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
	for k in pairs(Peds) do unloadModel(GetEntityModel(Peds[k])) DeletePed(Peds[k]) end
	FreezeEntityPosition(PlayerPedId(),false)
	removeattachedChair()
	ClearPedTasks(PlayerPedId())
end)
