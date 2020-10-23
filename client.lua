local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

src = {}
Tunnel.bindInterface("vrp_policia",src)
vSERVER = Tunnel.getInterface("vrp_policia")
-----------------------------------------------------------------------------------------------------------------------------------------
-- REANIMAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('reanimar')
AddEventHandler('reanimar',function()
	local handle,ped = FindFirstPed()
	local finished = false
	local reviver = nil
	repeat
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),GetEntityCoords(ped),true)
		if IsPedDeadOrDying(ped) and not IsPedAPlayer(ped) and distance <= 1.5 and reviver == nil then
			reviver = ped
			TriggerEvent("cancelando",true)
			vRP._playAnim(false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
			TriggerEvent("progress",15000,"reanimando")
			SetTimeout(15000,function()
				SetEntityHealth(reviver,400)
				local newped = ClonePed(reviver,GetEntityHeading(reviver),true,true)
				TaskWanderStandard(newped,10.0,10)
				local model = GetEntityModel(reviver)
				SetModelAsNoLongerNeeded(model)
				Citizen.InvokeNative(0xAD738C3085FE7E11,reviver,true,true)
				TriggerServerEvent("trydeleteped",PedToNet(reviver))
				vRP._stopAnim(false)
				TriggerServerEvent("reanimar:pagamentoexaltado")
				TriggerEvent("cancelando",false)
			end)
			finished = true
		end
		finished,ped = FindNextPed(handle)
	until not finished
	EndFindPed(handle)
end)

RegisterNetEvent('desligarRadios')
AddEventHandler('desligarRadios',function()
	local i = 0
    while i < 1033 do
      if exports["mumble-voip"]:SetRadioChannel(id) == true then
		exports["mumble-voip"]:SetRadioChannel(0)
	  end	
      i = i + 1
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /RMASCARA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("rmascara")
AddEventHandler("rmascara",function()
	SetPedComponentVariation(PlayerPedId(),1,0,0,2)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /RCHAPEU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("rchapeu")
AddEventHandler("rchapeu",function()
	ClearPedProp(PlayerPedId(),0)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SET & REMOVE ALGEMAS
-----------------------------------------------------------------------------------------------------------------------------------------
local algemado = false

RegisterNetEvent("setalgemas")
AddEventHandler("setalgemas",function()
	local ped = PlayerPedId()
	if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
		SetPedComponentVariation(ped,7,41,0,2)
		algemado = true
	elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
		SetPedComponentVariation(ped,7,25,0,2)
		algemado = true
	end
end)

RegisterNetEvent("removealgemas")
AddEventHandler("removealgemas",function()
	SetPedComponentVariation(PlayerPedId(),7,0,0,2)
	algemado = false
end)
--------------------------------------------------------------------------------------------------------------------------------------------------
-- CARREGAR
--------------------------------------------------------------------------------------------------------------------------------------------------
other = nil
drag = false
carregado = false
RegisterNetEvent("carregar")
AddEventHandler("carregar",function(p1)
    other = p1
    drag = not drag
end)

Citizen.CreateThread(function()
    while true do
    	Citizen.Wait(1)
		if drag and other then
			local ped = GetPlayerPed(GetPlayerFromServerId(other))
			Citizen.InvokeNative(0x6B9BBD38AB0796DF,PlayerPedId(),ped,4103,11816,0.48,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
			carregado = true
        else
        	if carregado then
				DetachEntity(PlayerPedId(),true,false)
				carregado = false
			end
        end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if not IsPedInAnyVehicle(PlayerPedId()) then
			if IsControlJustPressed(0,47) then
				TriggerServerEvent("vrp_policia:algemar")
			end
			if IsControlJustPressed(0,74) then
				TriggerServerEvent("vrp_policia:carregar")
			end
		end
	end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------
-- DISPAROS
--------------------------------------------------------------------------------------------------------------------------------------------------
local blacklistedWeapons = {
	"WEAPON_DAGGER",
	"WEAPON_BAT",
	"WEAPON_BOTTLE",
	"WEAPON_CROWBAR",
	"WEAPON_FLASHLIGHT",
	"WEAPON_GOLFCLUB",
	"WEAPON_HAMMER",
	"WEAPON_HATCHET",
	"WEAPON_KNUCKLE",
	"WEAPON_KNIFE",
	"WEAPON_MACHETE",
	"WEAPON_SWITCHBLADE",
	"WEAPON_NIGHTSTICK",
	"WEAPON_WRENCH",
	"WEAPON_BATTLEAXE",
	"WEAPON_POOLCUE",
	"WEAPON_STONE_HATCHET",
	"WEAPON_STUNGUN",
	"GADGET_PARACHUTE",
	"WEAPON_FIREEXTINGUISHER",
	"WEAPON_PETROLCAN",
	"WEAPON_RAYPISTOL",
	"WEAPON_FIREWORK",
	"WEAPON_BZGAS",
	"WEAPON_SNOWBALL",
	"WEAPON_STICKYBOMB",
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local ped = PlayerPedId()
		local blacklistweapon = false
		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1650.35,-3136.40,13.99,true)

		for k,v in ipairs(blacklistedWeapons) do
			if GetSelectedPedWeapon(ped) == GetHashKey(v) then
				blacklistweapon = true
			end
		end

		if IsPedShooting(ped) and not blacklistweapon then
			if distance >= 80 then
				TriggerServerEvent('atirando',x,y,z)
			end
		end
		blacklistweapon = false
	end
end)

local blips = {}
RegisterNetEvent('notificacao')
AddEventHandler('notificacao',function(x,y,z,user_id)
	--local distance = GetDistanceBetweenCoords(x,y,z,-186.1,-893.5,29.3,true)
	--if distance <= 2100 then
		if not DoesBlipExist(blips[user_id]) then
			PlaySoundFrontend(-1,"Enter_1st","GTAO_FM_Events_Soundset",false)
			TriggerEvent("Notify","aviso","<b>Disparos</b> de arma de fogo aconteceram.")
			blips[user_id] = AddBlipForCoord(x,y,z)
			SetBlipScale(blips[user_id],0.5)
			SetBlipSprite(blips[user_id],10)
			SetBlipColour(blips[user_id],49)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Disparos de arma de fogo")
			EndTextCommandSetBlipName(blips[user_id])
			SetBlipAsShortRange(blips[user_id],false)
			SetTimeout(30000,function()
				if DoesBlipExist(blips[user_id]) then
					RemoveBlip(blips[user_id])
				end
			end)
		end
	--end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONE
-----------------------------------------------------------------------------------------------------------------------------------------
local cone = nil
RegisterNetEvent('cone')
AddEventHandler('cone',function(nome)
	local coord = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.0,1.0,-0.94)
	local prop = "prop_mp_cone_02"
	local h = GetEntityHeading(PlayerPedId())
	if nome ~= "d" then
		cone = CreateObject(GetHashKey(prop),coord.x,coord.y-0.5,coord.z,true,true,true)
		PlaceObjectOnGroundProperly(cone)
		SetEntityHeading(cone,h)
		FreezeEntityPosition(cone,true)
	else
		if DoesObjectOfTypeExistAtCoords(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),true) then
			cone = GetClosestObjectOfType(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),false,false,false)
			TriggerServerEvent("trydeleteobj",ObjToNet(cone))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARREIRA
-----------------------------------------------------------------------------------------------------------------------------------------
local barreira = nil
RegisterNetEvent('barreira')
AddEventHandler('barreira',function(nome)
	local coord = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.0,1.5,-0.94)
	local prop = "prop_mp_barrier_02b"
	local h = GetEntityHeading(PlayerPedId())
	if nome ~= "d" then
		barreira = CreateObject(GetHashKey(prop),coord.x,coord.y-0.95,coord.z,true,true,true)
		PlaceObjectOnGroundProperly(barreira)
		SetEntityHeading(barreira,h-180)
		FreezeEntityPosition(barreira,true)
	else
		if DoesObjectOfTypeExistAtCoords(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),true) then
			barreira = GetClosestObjectOfType(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),false,false,false)
			TriggerServerEvent("trydeleteobj",ObjToNet(barreira))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTAINER
-----------------------------------------------------------------------------------------------------------------------------------------
local container = nil
RegisterNetEvent('container')
AddEventHandler('container',function(nome)
	local coord = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.0,1.5,-0.94)
	local prop = "prop_container_04a"
	local h = GetEntityHeading(PlayerPedId())
	if nome ~= "d" then
		container = CreateObject(GetHashKey(prop),coord.x,coord.y-0.95,coord.z,true,true,true)
		PlaceObjectOnGroundProperly(container)
		SetEntityHeading(container,h-180)
		FreezeEntityPosition(container,true)
	else
		if DoesObjectOfTypeExistAtCoords(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),true) then
			container = GetClosestObjectOfType(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),false,false,false)
			TriggerServerEvent("trydeleteobj",ObjToNet(container))
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPIKE
-----------------------------------------------------------------------------------------------------------------------------------------
local spike = nil
RegisterNetEvent('spike')
AddEventHandler('spike',function(nome)
	local coord = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.0,2.5,0.0)
	local prop = "p_ld_stinger_s"
	local h = GetEntityHeading(PlayerPedId())
	if nome ~= "d" then
		spike = CreateObject(GetHashKey(prop),coord.x,coord.y,coord.z,true,true,true)
		PlaceObjectOnGroundProperly(spike)
		SetEntityHeading(spike,h-180)
		FreezeEntityPosition(spike,true)
	else
		if DoesObjectOfTypeExistAtCoords(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),true) then
			spike = GetClosestObjectOfType(coord.x,coord.y,coord.z,0.9,GetHashKey(prop),false,false,false)
			TriggerServerEvent("trydeleteobj",ObjToNet(spike))
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local veh = GetVehiclePedIsIn(PlayerPedId(),false)
		local vcoord = GetEntityCoords(veh)
		local coord = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.0,1.0,-0.94)
		if IsPedInAnyVehicle(PlayerPedId()) then
			if DoesObjectOfTypeExistAtCoords(vcoord.x,vcoord.y,vcoord.z,0.9,GetHashKey("p_ld_stinger_s"),true) then
				SetVehicleTyreBurst(veh,0,true,1000.0)
				SetVehicleTyreBurst(veh,1,true,1000.0)
				SetVehicleTyreBurst(veh,2,true,1000.0)
				SetVehicleTyreBurst(veh,3,true,1000.0)
				SetVehicleTyreBurst(veh,4,true,1000.0)
				SetVehicleTyreBurst(veh,5,true,1000.0)
				SetVehicleTyreBurst(veh,6,true,1000.0)
				SetVehicleTyreBurst(veh,7,true,1000.0)
				if DoesObjectOfTypeExistAtCoords(coord.x,coord.y,coord.z,0.9,GetHashKey("p_ld_stinger_s"),true) then
					spike = GetClosestObjectOfType(coord.x,coord.y,coord.z,0.9,GetHashKey("p_ld_stinger_s"),false,false,false)
					TriggerServerEvent("trydeleteobj",ObjToNet(spike))
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRISÃO
-----------------------------------------------------------------------------------------------------------------------------------------
local prisioneiro = false
local prisioneiroser = false
local reducaopenal = false
local reducaopenal2 = false

RegisterNetEvent('prisioneiro')
AddEventHandler('prisioneiro',function(status)
	prisioneiro = status
	reducaopenal = false
	local ped = PlayerPedId()
	TriggerEvent("radio:outServers")
	TriggerEvent("radio:prisao", false)
	if prisioneiro then
		SetEntityInvincible(ped,false)--MQCU
		FreezeEntityPosition(ped,true)
		SetEntityVisible(ped,false,false)
		SetTimeout(10000,function()
			SetEntityInvincible(ped,false)
			FreezeEntityPosition(ped,false)
			SetEntityVisible(ped,true,false)
		end)
	end
end)

--OK
RegisterNetEvent('prisioneiroser')
AddEventHandler('prisioneiroser',function(status)
	prisioneiroser = status
	reducaopenal = false
	local ped = PlayerPedId()
	TriggerEvent("radio:outServers")
	TriggerEvent("radio:prisao", false)
	if prisioneiroser then
		SetEntityInvincible(ped,false)--MQCU
		FreezeEntityPosition(ped,true)
		SetEntityVisible(ped,false,false)
		SetTimeout(10000,function()
			SetEntityInvincible(ped,false)
			FreezeEntityPosition(ped,false)
			SetEntityVisible(ped,true,false)
		end)
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5000)
		if prisioneiro or prisioneiroser then
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1700.5,2605.2,45.5,true)
			local distancedp = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1098.29,-821.07,5.48,true)
			local distanceser = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1050.33,-841.0,5.05,true)
			if prisioneiroser then
				if distanceser >= 40 then
					SetEntityCoords(PlayerPedId(),-1050.33,-841.0,5.05)
					TriggerEvent("Notify","aviso","O agente penitenciário encontrou você tentando escapar do serviço.")
					TriggerServerEvent("aumentarpena")
				end
			elseif distance >= 150 and distancedp >= 20 then
				if distancedp > distance then
					SetEntityCoords(PlayerPedId(),1680.1,2513.0,45.5)
					TriggerEvent("Notify","aviso","O agente penitenciário encontrou você tentando escapar.")
				elseif distance > distancedp then
					SetEntityCoords(PlayerPedId(),-1098.29,-821.07,5.48)
					TriggerEvent("Notify","aviso","O agente penitenciário encontrou você tentando escapar.")
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ANDAR																															   --
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("homem",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@confident")
	end
end)

RegisterCommand("mulher",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@heels@c")
	end
end)

RegisterCommand("depressivo",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@depressed@a")
	end
end)

RegisterCommand("depressiva",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@depressed@a")
	end
end)

RegisterCommand("empresario",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@business@a")
	end
end)

RegisterCommand("determinado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@brave@a")
	end	
end)

RegisterCommand("descontraido",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@casual@a")
	end
end)

RegisterCommand("farto",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@fat@a")
	end
end)

RegisterCommand("estiloso",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@hipster@a")
	end
end)

RegisterCommand("ferido",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@injured")
	end
end)

RegisterCommand("nervoso",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@hurry@a")
	end
end)

RegisterCommand("desleixado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@hobo@a")
	end
end)

RegisterCommand("infeliz",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@sad@a")
	end
end)

RegisterCommand("musculoso",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@muscle@a")
	end
end)

RegisterCommand("desligado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@shadyped@a")
	end
end)

RegisterCommand("fadiga",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@buzzed")
	end
end)

RegisterCommand("apressado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@hurry_butch@a")
	end
end)

RegisterCommand("descolado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@money")
	end
end)

RegisterCommand("corridinha",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@quick")
	end
end)

RegisterCommand("piriguete",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@maneater")
	end
end)

RegisterCommand("petulante",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@sassy")
	end
end)

RegisterCommand("arrogante",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@arrogant@a")
	end
end)

RegisterCommand("bebado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@drunk@slightlydrunk")
	end
end)

RegisterCommand("bebado2",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@drunk@verydrunk")
	end
end)

RegisterCommand("bebado3",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@drunk@moderatedrunk")
	end
end)

RegisterCommand("irritado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@fire")
	end
end)

RegisterCommand("intimidado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_m@intimidation@cop@unarmed")
	end
end)

RegisterCommand("poderosa",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@handbag")
	end
end)

RegisterCommand("chateado",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@injured")
	end
end)

RegisterCommand("estilosa",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@posh@")
	end
end)

RegisterCommand("sensual",function(source,args)
	if not prisioneiro or not prisioneiroser or not algemado then
	vRP.loadAnimSet("move_f@sexy@a")
	end
end)

--------------------------------------------------------------------------------------
-- REDUCOES PENAIS (PRESIDIO E SERVICO COMUNITARIO)                                 --
--------------------------------------------------------------------------------------
local avisado = false
Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
		if prisioneiro or prisioneiroser then
			if (IsPedInAnyVehicle(PlayerPedId()) or IsPedSittingInAnyVehicle(PlayerPedId())) then
				timeDistance = 1000
				TaskLeaveVehicle(PlayerPedId(),GetVehiclePedIsIn(PlayerPedId()),4160)
				if not avisado then
					TriggerEvent("Notify","importante","Não use veículos para reduzir a pena!")
					avisado = true
				end
			end
			timeDistance = 5
			local distance1 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1691.59,2566.05,45.56,true)
			local distance2 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),1669.51,2487.71,45.82,true)
			local distance3 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1050.33,-841.0,5.05,true)
			local distance4 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1055.38,-867.31,5.12,true)
			local distance5 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1077.13,-860.63,4.87,true)

			if GetEntityHealth(PlayerPedId()) <= 100 then
				reducaopenal = false
				vRP._DeletarObjeto()
			end

			if distance1 <= 100 and not reducaopenal then
				DrawMarker(21,1691.59,2566.05,45.56,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,0,0,100,1,0,0,1)
				if distance1 <= 1.2 then
					drawTxt("PRESSIONE  ~r~E~w~  PARA PEGAR A CAIXA",4,0.5,0.90,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(PlayerPedId()) then
						avisado = false
						reducaopenal = true
						ResetPedMovementClipset(PlayerPedId(),0)
						SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
						vRP._CarregarObjeto("anim@heists@box_carry@","idle","hei_prop_heist_box",50,28422)
					end
				end
			end

			if distance2 <= 100 and reducaopenal then
				DrawMarker(21,1669.51,2487.71,45.82,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,0,0,100,1,0,0,1)
				if distance2 <= 1.2 then
					drawTxt("PRESSIONE  ~r~E~w~  PARA ENTREGAR A CAIXA",4,0.5,0.90,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(PlayerPedId()) then
						avisado = false
						reducaopenal = false
						TriggerServerEvent("diminuirpenabig")
						vRP._DeletarObjeto()
					end
				end
			end

			--ok
			if distance3 <= 100 and not reducaopenal and not reducaopenal2 then
				DrawMarker(21,-1050.33,-841.0,5.05,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,0,0,100,1,0,0,1)
				if distance3 <= 1.2 then
					drawTxt("PRESSIONE  ~r~E~w~  PARA PEGAR A VASSOURA",4,0.5,0.90,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(PlayerPedId()) then
						avisado = false
						reducaopenal = true
						ResetPedMovementClipset(PlayerPedId(),0)
						SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
						vRP._CarregarObjeto("amb@world_human_janitor@male@idle_a","idle_a","prop_tool_broom",49,28422)
					end
				end
			end

			if distance4 <= 100 and reducaopenal and not reducaopenal2 then
				DrawMarker(21,-1055.38,-867.31,5.12,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,0,0,100,1,0,0,1)
				if distance4 <= 1.2 then
					drawTxt("PRESSIONE  ~r~E~w~  PARA EMPACOTAR O LIXO",4,0.5,0.90,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(PlayerPedId()) then
						avisado = false
						reducaopenal = false
						reducaopenal2 = true
						vRP._DeletarObjeto()
						ResetPedMovementClipset(PlayerPedId(),0)
						SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
						SetTimeout(500,function()
							vRP.CarregarObjeto("","","prop_cs_rub_binbag_01",50,57005,0.11,0,0.0,0,260.0,60.0)
						end)
					end
				end
			end
			
			if distance5 <= 100 and reducaopenal2 and not reducaopenal then
				DrawMarker(21,-1077.13,-860.63,4.87,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,0,0,100,1,0,0,1)
				if distance5 <= 1.2 then
					drawTxt("PRESSIONE  ~r~E~w~  PARA COMPLETAR A LIMPEZA",4,0.5,0.90,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(PlayerPedId()) then
						avisado = false
						reducaopenal2 = false
						TriggerServerEvent("diminuirpenaservicobig")
						vRP._DeletarObjeto()
					end
				end
			end
		end
		Citizen.Wait(timeDistance)
	end
end)

--------------------------------------------------------------------------------------
-- BLIPS DE COMIDA E BEBIDA PELO MAPA                                               --
--------------------------------------------------------------------------------------
local bebendo = false
Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
		--TriggerServerEvent("dead")
		local distance1 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-204.01,-1329.33,29.8,true)  --Bennys Cafe
		local distance2 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),437.34,-978.85,29.8,true)  --Policia Agua
		local distance3 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),435.9,-985.87,30.69,true)  --Policia Cafe
		local distance4 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),436.23,-979.48,30.69,true)  --Policia Batata
		local distance5 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-979.68,109.63,45.7,true)  --casa AGA Bong
		local distance6 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1837.71,301.87,79.55,true)  --casa Sergio Moro Bong
		local distance7 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-2649.38,1694.99,138.40,true)  --casa nando Wisky
		local distance8 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-2612.47,1705.58,142.37,true)  --casa nando Comida
		local distance9 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-2610.45,1699.98,142.37,true)  --casa nando Refri
		local distance15 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-38.17,-1094.34,26.22,true)  --Cafe concessionaria
		local distance16 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),315.05,-587.58,43.28,true) --café hp
		local distance18 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),341.21,-586.35,43.28,true) --Agua hp
		local distance19 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),308.88,-585.34,43.28,true) -- refri hp
		local distance20 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),310.22,-575.23,43.28,true) --agua hp2
		local distance21 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),322.12,-579.27,43.28,true) --café hp
		local distance22 = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-2988.69,718.73,6.94,true) --arma integrante
		
		if distance1 <= 16 then
			timeDistance = 5
			DrawMarker(21,-204.01,-1329.33,30.49,0,0,0,0,180.0,130.0,0.6,0.6,0.5,255,0,0,100,0,0,0,1)
			if distance1 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR CAFÉ",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance21 <= 16 then
			timeDistance = 5
			DrawMarker(21,322.12,-579.27,43.28,0,0,0,0,180.0,130.0,0.6,0.6,0.5,255,0,0,100,0,0,0,1)
			if distance21 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR CAFÉ",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance2 <= 15 then
			timeDistance = 5
			DrawMarker(21,437.26,-978.8,30.3,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance2 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR ÁGUA",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_ld_flow_bottle",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance20 <= 15 then
			timeDistance = 5
			DrawMarker(21,310.22,-575.23,43.28,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance20 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR ÁGUA",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_ld_flow_bottle",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance3 <= 15 then
			timeDistance = 5
			DrawMarker(21,435.9,-985.87,30.3,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance3 <= 0.8 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR CAFÉ",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance4 <= 15 then
			timeDistance = 5
			DrawMarker(21,436.23,-979.48,30.3,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance4 <= 0.8 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA PEGAR BATATA",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_aa_coffee@base","base","prop_food_bs_chips",50,28422)			
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance5 <= 15 then
			timeDistance = 5
			DrawMarker(21,-979.68,109.63,45.2,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance5 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA RELAXAR",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("anim@safehouse@bong","bong_stage1","prop_bong_01",50,60309)
					TriggerServerEvent("maconhas")
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance6 <= 15 then
			timeDistance = 5
			DrawMarker(21,-1837.71,301.87,79.35,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance6 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA RELAXAR",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("anim@safehouse@bong","bong_stage1","prop_bong_01",50,60309)
					TriggerServerEvent("maconhas")
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance7 <= 15 then
			timeDistance = 5
			DrawMarker(21,-2649.38,1694.99,138.40,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance7 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA BEBER WISKY",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","p_whiskey_notop",49,28422)
					TriggerServerEvent("maconhas")
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		if distance8 <= 15 then
			timeDistance = 5
			DrawMarker(21,-2612.47,1705.58,142.17,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance8 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA COMER",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_cs_burger_01",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		if distance9 <= 15 then
			timeDistance = 5
			DrawMarker(21,-2610.45,1699.98,142.17,353.28,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance9 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA REFRESCAR",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_energy_drink",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		
		--[[if distance10 <= 15 then
			DrawMarker(21,339.62,-579.22,43.12,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance10 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR ÁGUA",4,0.5,0.93,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_ld_flow_bottle",49,28422)
					SetTimeout(25000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end]]
		
		--[[if distance11 <= 15 then
			DrawMarker(21,-1614.68,103.28,61.34,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance11 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA BEBER CHAMPANHE",4,0.5,0.93,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then	
					bebendo = true	
					vRP._CarregarObjeto("amb@world_human_aa_coffee@base","base","prop_drink_champ",50,28422)
					SetTimeout(3000,function()
						vRP._DeletarObjeto()
						vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_drink_champ",49,28422)
						TriggerServerEvent("bebida")
						SetTimeout(10000,function()
							vRP._DeletarObjeto()
							bebendo = false
						end)
					end)
				end
			end
		end
			
		if distance12 <= 15 then
			DrawMarker(21,-1612.14,100.19,61.29,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance12 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA BEBER WHISKY",4,0.5,0.93,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					bebendo = true				
					vRP._CarregarObjeto("amb@world_human_aa_coffee@base","base","prop_drink_whisky",50,28422)
					SetTimeout(3000,function()
						vRP._DeletarObjeto()
						vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_drink_whisky",49,28422)
						TriggerServerEvent("bebida")
						SetTimeout(10000,function()
							vRP._DeletarObjeto()
							bebendo = false
						end)
					end)
				end
			end
		end
			
		if distance13 <= 15 then
			DrawMarker(21,-1610.72,98.46,61.26,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance13 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA COMER",4,0.5,0.93,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					bebendo = true
					vRP._CarregarObjeto("amb@code_human_wander_eating_donut@male@idle_a","idle_c","prop_amb_donut",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
						bebendo = false
					end)
				end
			end
		end

		if distance14 <= 15 then
			DrawMarker(21,-1608.92,96.07,61.26,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance14 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA BEBER UM DRINK",4,0.5,0.93,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					bebendo = true				
					vRP._CarregarObjeto("amb@world_human_aa_coffee@base","base","apa_prop_cs_plastic_cup_01",50,28422)
					SetTimeout(3000,function()
						vRP._DeletarObjeto()
						vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","apa_prop_cs_plastic_cup_01",49,28422)
						TriggerServerEvent("bebida")
						SetTimeout(10000,function()
							vRP._DeletarObjeto()
							ShakeGameplayCam('SMALL_EXPLOSION_SHAKE',0.5)
							SetTimeout(2000,function()
								vRP.loadAnimSet("MOVE_M@DRUNK@VERYDRUNK")
								SetTimecycleModifier("REDMIST_blend")
								ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE",1.0)
								StartScreenEffect("DMT_flight",30000,false)
								Wait(40000)
								TriggerEvent('cancelando',false)
								SetTimecycleModifier("")
								SetTransitionTimecycleModifier("")
								StopGameplayCamShaking()
								ResetPedMovementClipset(PlayerPedId())
							end)
							SetTimeout(7000,function()
								vRP._playAnim(false,{{"missheist_agency3astumble_getup","stumble_getup"}},false)
							end)
							SetTimeout(17000,function()
								vRP._playAnim(false,{{"random@drunk_driver_1","drunk_fall_over"}},false)
							end)
						end)
						SetTimeout(50000, function()
							vRP._playAnim(false,{{"missfam5_blackout","pass_out"}},false)
							bebendo = false
						end)
					end)
				end
			end
		end]]
		
		if distance15 <= 15 then
			timeDistance = 5
			DrawMarker(21,-38.17,-1094.34,26.22,0,0,0,0,180.0,130.0,0.6,0.6,0.5,255,0,0,100,0,0,0,1)
			if distance15 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR CAFÉ",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
					SetTimeout(7000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end

		if distance16 <= 16 then
			timeDistance = 5
			DrawMarker(21,315.05,-587.58,43.0,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,0,0,100,0,0,0,1)
			if distance16 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR CAFÉ",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_aa_coffee@idle_a","idle_a","prop_fib_coffee",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		if distance19 <= 15 then
			timeDistance = 5
			DrawMarker(21,308.88,-585.34,43.28,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance19 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA REFRESCAR",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_energy_drink",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end
		if distance18 <= 18 then
			timeDistance = 5
			DrawMarker(21,341.21,-586.35,43.28,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance18 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA TOMAR ÁGUA",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					vRP._CarregarObjeto("amb@world_human_drinking@beer@male@idle_a","idle_a","prop_ld_flow_bottle",49,28422)
					SetTimeout(10000,function()
						vRP._DeletarObjeto()
					end)
				end
			end
		end

		if distance22 <= 18 then
			timeDistance = 5
			DrawMarker(21,-2988.69,718.73,6.94,0,0,0,0,180.0,130.0,0.4,0.4,0.3,255,255,0,100,0,0,0,1)
			if distance22 <= 1.2 then
				drawTxt("PRESSIONE  ~r~E~w~  PARA PEGAR A ARMA",4,0.5,0.90,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					TriggerServerEvent("integrante:giveAlgemas")
				end
			end
		end
		
		Citizen.Wait(timeDistance)
	end
		
end)

RegisterNetEvent('integrante:givearma')
AddEventHandler('integrante:givearma',function()
	local ped = PlayerPedId()
	SetPedAmmo(ped,GetHashKey("WEAPON_COMBATPISTOL"),0)
	RemoveWeaponFromPed(ped,GetHashKey("WEAPON_COMBATPISTOL"))
	vRP.giveWeapons({["WEAPON_COMBATPISTOL"] = { ammo = 100 }})
	TriggerEvent("Notify","importante","Você recebeu sua arma de serviço!")
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)

		-- [apertar insert e mandar o P] --
		if IsControlJustPressed(0,121) then
			TriggerServerEvent("position")
		end
		
		if reducaopenal or reducaopenal2 then
			BlockWeaponWheelThisFrame()
			DisableControlAction(0,21,true)
			DisableControlAction(0,22,true)
			DisableControlAction(0,24,true)
			DisableControlAction(0,25,true)
			DisableControlAction(0,29,true)
			DisableControlAction(0,32,true)
			DisableControlAction(0,33,true)
			DisableControlAction(0,34,true)
			DisableControlAction(0,35,true)
			DisableControlAction(0,56,true)
			DisableControlAction(0,58,true)
			DisableControlAction(0,73,true)
			DisableControlAction(0,75,true)
			DisableControlAction(0,140,true)
			DisableControlAction(0,141,true)
			DisableControlAction(0,142,true)
			DisableControlAction(0,143,true)
			DisableControlAction(0,166,true)
			DisableControlAction(0,167,true)
			DisableControlAction(0,170,true)
			DisableControlAction(0,177,true)
			DisableControlAction(0,182,true)
			DisableControlAction(0,187,true)
			DisableControlAction(0,188,true)
			DisableControlAction(0,189,true)
			DisableControlAction(0,190,true)
			DisableControlAction(0,243,true)
			DisableControlAction(0,245,true)
			DisableControlAction(0,246,true)
			DisableControlAction(0,257,true)
			DisableControlAction(0,263,true)
			DisableControlAction(0,264,true)
			DisableControlAction(0,268,true)
			DisableControlAction(0,269,true)
			DisableControlAction(0,270,true)
			DisableControlAction(0,271,true)
			DisableControlAction(0,288,true)
			DisableControlAction(0,289,true)
			DisableControlAction(0,303,true)
			DisableControlAction(0,311,true)
			DisableControlAction(0,344,true)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
		if algemado then
			timeDistance = 1
			DisableControlAction(0,51,true)
			BlockWeaponWheelThisFrame()
			DisableControlAction(0,21,true)
			DisableControlAction(0,22,true)
			DisableControlAction(0,24,true)
			DisableControlAction(0,25,true)
			DisableControlAction(0,29,true)
			DisableControlAction(0,32,true)
			DisableControlAction(0,33,true)
			DisableControlAction(0,34,true)
			DisableControlAction(0,35,true)
			DisableControlAction(0,56,true)
			DisableControlAction(0,58,true)
			DisableControlAction(0,73,true)
			DisableControlAction(0,75,true)
			DisableControlAction(0,140,true)
			DisableControlAction(0,141,true)
			DisableControlAction(0,142,true)
			DisableControlAction(0,143,true)
			DisableControlAction(0,166,true)
			DisableControlAction(0,167,true)
			DisableControlAction(0,170,true)
			DisableControlAction(0,177,true)
			DisableControlAction(0,182,true)
			DisableControlAction(0,187,true)
			DisableControlAction(0,188,true)
			DisableControlAction(0,189,true)
			DisableControlAction(0,190,true)
			DisableControlAction(0,243,true)
			DisableControlAction(0,245,true)
			DisableControlAction(0,246,true)
			DisableControlAction(0,257,true)
			DisableControlAction(0,263,true)
			DisableControlAction(0,264,true)
			DisableControlAction(0,268,true)
			DisableControlAction(0,269,true)
			DisableControlAction(0,270,true)
			DisableControlAction(0,271,true)
			DisableControlAction(0,288,true)
			DisableControlAction(0,289,true)
			DisableControlAction(0,303,true)
			DisableControlAction(0,311,true)
			DisableControlAction(0,344,true)
 		end
		Citizen.Wait(timeDistance)
	end
end)

Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
		if bebendo then
			timeDistance = 5
			BlockWeaponWheelThisFrame()
			DisableControlAction(0,21,true)
			DisableControlAction(0,22,true)
			DisableControlAction(0,24,true)
			DisableControlAction(0,25,true)
			DisableControlAction(0,29,true)
			DisableControlAction(0,32,true)
			DisableControlAction(0,33,true)
			DisableControlAction(0,34,true)
			DisableControlAction(0,35,true)
			DisableControlAction(0,36,true)
			DisableControlAction(0,38,true)
			DisableControlAction(0,56,true)
			DisableControlAction(0,58,true)
			DisableControlAction(0,60,true)
			DisableControlAction(0,62,true)
			DisableControlAction(0,73,true)
			DisableControlAction(0,75,true)
			DisableControlAction(0,132,true)
			DisableControlAction(0,140,true)
			DisableControlAction(0,141,true)
			DisableControlAction(0,142,true)
			DisableControlAction(0,143,true)
			DisableControlAction(0,166,true)
			DisableControlAction(0,167,true)
			DisableControlAction(0,170,true)
			DisableControlAction(0,177,true)
			DisableControlAction(0,182,true)
			DisableControlAction(0,187,true)
			DisableControlAction(0,188,true)
			DisableControlAction(0,189,true)
			DisableControlAction(0,190,true)
			DisableControlAction(0,210,true)
			DisableControlAction(0,224,true)
			DisableControlAction(0,243,true)
			DisableControlAction(0,245,true)
			DisableControlAction(0,246,true)
			DisableControlAction(0,257,true)
			DisableControlAction(0,263,true)
			DisableControlAction(0,264,true)
			DisableControlAction(0,268,true)
			DisableControlAction(0,269,true)
			DisableControlAction(0,270,true)
			DisableControlAction(0,271,true)
			DisableControlAction(0,280,true)
			DisableControlAction(0,281,true)
			DisableControlAction(0,288,true)
			DisableControlAction(0,289,true)
			DisableControlAction(0,303,true)
			DisableControlAction(0,311,true)
			DisableControlAction(0,326,true)
			DisableControlAction(0,344,true)
			DisableControlAction(0,341,true)
		end
		Citizen.Wait(timeDistance)
	end
end)

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

------------------------------------------------------------------------------------
-- SPAWN TREM
------------------------------------------------------------------------------------
--[[Citizen.CreateThread(function()
	SwitchTrainTrack(0, true)
	SwitchTrainTrack(3, true)
	N_0x21973bbf8d17edfa(0, 120000)
	SetRandomTrains(true)
end)]]
------------------------------------------------------------------------------------
-- DINHEIRO SUJO
------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local timeDistance = 500
        local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1103.32,-830.1,10.28,true)

        if distance <= 30 then
			timeDistance = 5
            DrawMarker(27,-1103.32,-830.1,9.3,0,0,0,0,180.0,130.0,1.0,1.0,0.5,255,0,0,100,0,0,0,0)
            if distance <= 1.2 then
                drawTxt("PRESSIONE  ~r~E~w~  PARA ANALISAR O DINHEIRO",4,0.5,0.93,0.50,255,255,255,180)
                if IsControlJustPressed(0,38) then
                    TriggerServerEvent("dinheirosujo")  -- chama o servidor pra executar a analise --
                end
            end
        end
		Citizen.Wait(timeDistance)
    end
end)