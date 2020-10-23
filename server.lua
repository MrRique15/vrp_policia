local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()

src = {}
Tunnel.bindInterface("vrp_policia",src)
vCLIENT = Tunnel.getInterface("vrp_policia")
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhookarsenal = "https://discordapp.com/api/webhooks/680960624557162566/fgjVEV1wBMWJDKIFYrks5rfVXHrw7E-EOkLX5DAh7iFp5w_oLVqutgPbLxNXbojN_ftC"
local webhookprender = "https://discordapp.com/api/webhooks/739538914829664276/xUmLZZArwS_a4iac-TocygaUK29RKNFDmuB5sG_QSklMdD9mf35bDb7r-m690heg-2xa"
local webhookmultas = "https://discordapp.com/api/webhooks/693187518354423838/3FjPcbHBzKxxiG2AYjB-xTXigqtrJf5yGGnXuOs6mjbpzYehkjA18NlXYuwl7f5fG4ir"
local webhookocorrencias = "https://discordapp.com/api/webhooks/739541738032463882/nZXHL_3twNvw2mHJ4IEg23zk3nFcbGWNTU8q0mRW8GvDJW5GTsKROZAhkVS-91eK5O5v"
local webhookotriagem = "https://discordapp.com/api/webhooks/724433903418605631/GkdZnidH6a6_faBrTAq92W1GZtFC1CHrr0bQC7PZUg-vmkP5a71nfp_JmiDDofJCQaGM"
local webhookregistro = "https://discordapp.com/api/webhooks/754011312345972926/seZVUCUcK8RIoF3P_hmYmWkgBWR6PpySg0dJzso0xXg56UISuGgpEHnwPMYu65eAu7Ng"
local webhookregistrobennys = "https://discordapp.com/api/webhooks/763180709145214989/joVhpjJ4y4uUDR5FaBbQgIeNBFiyCrc3w2Cl3YIy3pP67SQYbDOxKb_HlV3eqE-GAlvY"
local webhookdetido = "https://discordapp.com/api/webhooks/693187269888049192/JH8DyuBSZM_TJCH7PY9vPMz3bH2cYoQ-A7lgnKrr0qNCnpX3CRPOhwWM1u72rbZKv8AT"
local webhookpolicia = "https://discordapp.com/api/webhooks/693493850970390670/fu1XLLCI2pn15WwT4EGAZDJGYeitH5jRTNOdmjwiKIizRkjfXk0MmQh14_u_quNFO72M"
local webhookparamedico = "https://discordapp.com/api/webhooks/682704375960961071/3f-uIlLKtuoA5Yjqu24zYfPH4G1PWjdlUYPHQpDx0VKSVauwY25AeLZGpYT4gaPHAaNh"
local webhookmecanico = "https://discordapp.com/api/webhooks/682704375960961071/3f-uIlLKtuoA5Yjqu24zYfPH4G1PWjdlUYPHQpDx0VKSVauwY25AeLZGpYT4gaPHAaNh"
local webhookre = "https://discordapp.com/api/webhooks/682704375960961071/3f-uIlLKtuoA5Yjqu24zYfPH4G1PWjdlUYPHQpDx0VKSVauwY25AeLZGpYT4gaPHAaNh"
local webhookpoliciaapreendidos = "https://discordapp.com/api/webhooks/693187767336697928/nP5hQByENdq18UENd0fcv8v1q-aci_J0BxkEXbA9UiDivY3m2T05SPSVRSTtvnsLbAZk"
local webhookmecpag = "https://discordapp.com/api/webhooks/693493445750423552/iIG2Mf79oF-L2pgWQ38ws2TJH8avDHrH7ftXxffta3Tl129QYlzYD214QHVvWCTN2m_E"
local webhookfbi = "https://discordapp.com/api/webhooks/700414999365025894/Uz6-2ehEt4Wy-nG59_iF7K7MTtSKamCfglZ1QPsULE2a7N6G_wV--kemj3l_RikNI-Oc"
local webhookswat = "https://discordapp.com/api/webhooks/700415383357882509/00oXj0fY64Lop23w6MUgL9mVRKpHNSUdjTXRP6PNDZTJW2Gjq3eO27s-EYervhWAMIIs"
local webhookptr = "https://discordapp.com/api/webhooks/724425226070261860/ZlOesjPkAxkFuwOg7vn3O7oSjPj0iIcOhxGDoSX74NI0dCO3MZ2mWKQVakmCNqw9FsxV"
local webhookcorregedoria = "https://discordapp.com/api/webhooks/724437070713585676/ferBpy9Mf04Vz2rBBe2fxtAdtjmi7uDQfGSdBKutS35w5yJwUNWJQlb6h5PWdoyJt-rP"
local webhookdisparo = "https://discordapp.com/api/webhooks/714501156088447007/ciDtXFZ1blKmkjJ9AOLBWUqYWVEySfC9tdozGqrzcXD5t1mqiqLIDPOFW21I5M7GCde3"
local webhookintegrante = "https://discordapp.com/api/webhooks/760947011418980434/fixidd5s5CyPJnaQWzSPSrK5S3h-N37d1zxzhX76x181LXlqaoVzs5Spx9CAwoM3_BUF"
local weebhookficha = "https://discordapp.com/api/webhooks/766470793286254613/WY7y9o_kwD0oDYKcl29qLsawcFnDEDDwz1MCz_egBa9k873BuVJyp3T3LL_errAR28cT"
local webhookad = "https://discordapp.com/api/webhooks/769098902796238868/GGb2O5d63ycrv7bvrkYtwidATBkZSuOoNtmrM21YpuECSCAUR38xrwCD0BYxvPoexiB7"

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLACA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('placa',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"guarda.permissao") then
		if args[1] then
			local user_id = vRP.getUserByRegistration(args[1])
			if user_id then
				local identity = vRP.getUserIdentity(user_id)
				if identity then
					vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
					TriggerClientEvent('chatMessage',source,"190",{64,64,255},"^1Passaporte: ^0"..identity.user_id.."   ^2|   ^1Placa: ^0"..identity.registration.."   ^2|   ^1Proprietário: ^0"..identity.name.." "..identity.firstname.."   ^2|   ^1Idade: ^0"..identity.age.." anos   ^2|   ^1Telefone: ^0"..identity.phone)
				end
			else
				TriggerClientEvent("Notify",source,"importante","Placa inválida ou veículo de americano.")
			end
		else
			local vehicle,vnetid,placa,vname,lock,banned = vRPclient.vehList(source,7)
			local placa_user = vRP.getUserByRegistration(placa)
			if placa then
				if placa_user then
					local identity = vRP.getUserIdentity(placa_user)
					if identity then
						local vehicleName = vRP.vehicleName(vname)
						vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
						TriggerClientEvent('chatMessage',source,"190",{64,64,255},"^1Passaporte: ^0"..identity.user_id.."   ^2|   ^1Placa: ^0"..identity.registration.."   ^2|   ^1Placa: ^0"..identity.registration.."   ^2|   ^1Proprietário: ^0"..identity.name.." "..identity.firstname.."   ^2|   ^1Modelo: ^0"..vehicleName.."   ^2|   ^1Idade: ^0"..identity.age.." anos   ^2|   ^1Telefone: ^0"..identity.phone)
					end
				else
					TriggerClientEvent("Notify",source,"importante","Placa inválida ou veículo de americano.")
				end
			end
		end
	end
end)

function src.checkPerm()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"special.permissao") then
		SendWebhookMessage(webhookintegrante,"```prolog\n[INTEGRANTE]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========PEGOU=========] \n[Glock - 100 Munições]\n[Algemas - 1 Unidade]"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").."\r```")
		return true
	end
end

RegisterServerEvent("integrante:giveAlgemas")
AddEventHandler("integrante:giveAlgemas",function()
	local source = source
	local user_id = vRP.getUserId(source)
	if not vRP.hasPermission(user_id,"special.permissao") then
		return
	end
	TriggerClientEvent("integrante:givearma",source)
	if vRP.getInventoryItemAmount(user_id,"algemas") >= 1 then
		TriggerClientEvent("Notify",source,"aviso","Você já possui uma algema")
		return
	else
		vRP.giveInventoryItem(user_id,"algemas",1)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BVIDA
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('bvida',function(source,rawCommand)
	local user_id = vRP.getUserId(source)		
		vRPclient._setCustomization(source,vRPclient.getCustomization(source))
		vRP.removeCloak(source)			
end)

RegisterCommand('clone',function(source,rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("cloneplates",source,placa)
		TriggerClientEvent("Notify",source,"sucesso","Placa clonada com sucesso.",8000)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PTR
 ----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ptr', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("policia.permissao")
	local oficiais2 = vRP.getUsersByPermission("fbi.permissao")
 	local paramedicos = 0
	local paramedicos2 = 0
	local oficiais_nomes = ""
	local oficiais_nomes2 = ""

	for k,v in ipairs(oficiais) do
		local identity = vRP.getUserIdentity(parseInt(v))
		oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
		paramedicos = paramedicos + 1
 	end		
		
	TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Policiais</b> em serviço.")

	if paramedicos < 2 then
		TriggerClientEvent("Notify",source,"Negado", "Proibido Ação de Rua!!!")
	else
		TriggerClientEvent("Notify",source,"sucesso", "Liberado Ação de Rua")
	end
		
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"policia.permissao") then
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante","<b>POLICIA</b> <br>"..oficiais_nomes.." ")
		end
	end
end)



RegisterCommand('zeroprocurado', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local nplayer = parseInt(args[1])
	if nplayer then
		vRP.searchTimerZero(nplayer)
		TriggerClientEvent("Notify",source,"importante","Procurado retirado de: "..nplayer.."")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- adms
 ----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('adms', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("admin.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." ADMs</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)

RegisterCommand('mods', function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local oficiais = vRP.getUsersByPermission("mod.permissao")
	local paramedicos = 0
   local oficiais_nomes = ""
   if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
	   for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
			if not vRP.hasPermission(parseInt(v),"admin.permissao") then
				oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
				paramedicos = paramedicos + 1
			end
		end
   end
   if vRP.hasPermission(user_id,"mod.permissao") or vRP.hasPermission(user_id,"mod.permissao")  then
	   TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." MODs</b> na cidade.")
	   if parseInt(paramedicos) > 0 then
		   TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
	   end
   end
end)

RegisterCommand('crips', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("ballas.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Ballas</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('bloods', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("vagos.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Bloods</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('families', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("families.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Families</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)

RegisterCommand('bratva', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("loscuervos.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Bratva</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)

RegisterCommand('barragem', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("pcc.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Anonymous</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('Afirma', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("afirma.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Marabunta</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('motoclub', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("motoclub.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Motoclub</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('carros', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("carros.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Hot wheels</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('vanilla', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("vanilla.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Vanilla</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('furious', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("furious.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Furios</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('soa', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("soa.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." SOA</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('mafia', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("mafia.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Mafia</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
RegisterCommand('sinaloas', function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("sinaloas.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Sinaloas</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- chapos
 ----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('chapos', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("chapos.permissao")
 	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"chapos.permissao") then
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
 		end
	end
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"chapos.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Chapos</b> na cidade.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- FBI
 ----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('fbi', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("fbi.permissao")
 	local paramedicos = 0
 	local oficiais_nomes = ""
	for k,v in ipairs(oficiais) do
 		local identity = vRP.getUserIdentity(parseInt(v))
 		oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
 		paramedicos = paramedicos + 1
 	end
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"fbi.permissao") or vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"paisanafbi.permissao") then
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Oficiais</b> em serviço.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADV
----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADV
 ----------------------------------------------------------------------------------------------------------------------------------------
--[[RegisterCommand('adv', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("advogado.permissao")
 	local paramedicos = 0
 	local oficiais_nomes = ""
 		for k,v in ipairs(oficiais) do
 			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
 			paramedicos = paramedicos + 1
 		end
 		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Advogados</b> em serviço.")
 		if parseInt(paramedicos) > 0 then
 			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
 		end
end)]]

-----------------------------------------------------------------------------------------------------------------------------------------
-- EMS /ems
 ----------------------------------------------------------------------------------------------------------------------------------------
 RegisterCommand('ems', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("paramedico.permissao")
	--local oficiais2 = vRP.getUsersByPermission("bombeiro.permissao")
 	local paramedicos = 0
	local paramedicos2 = 0
	local oficiais_nomes = ""
	local oficiais_nomes2 = ""
		for k,v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
			--if not vRPclient.isInComa(parseInt(v)) then
				oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
				paramedicos = paramedicos + 1
			--end
 		end		
		--[[for k,v in ipairs(oficiais2) do
			local identity2 = vRP.getUserIdentity(parseInt(v))
			--if not vRPclient.isInComa(parseInt(k)) then
				oficiais_nomes2 = oficiais_nomes2 .. "<b>" .. v .. "</b>: " .. identity2.name .. " " .. identity2.firstname .. "<br>"
				paramedicos2 = paramedicos2 + 1
			--end
 		end]]
		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Paramedicos</b> em serviço.<br>Atualmente <b>"..paramedicos2.." Bombeiros</b> em serviço.")
		if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"paramedico.permissao") then
			if parseInt(paramedicos) > 0 then
				TriggerClientEvent("Notify",source,"importante","<b>PARAMEDICO</b> <br>"..oficiais_nomes.." ")
			end
		end
		--[[if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"bombeiro.permissao") then
			if parseInt(paramedicos2) > 0 then
				TriggerClientEvent("Notify",source,"importante","<b>BOMBEIRO</b> <br>"..oficiais_nomes2.." ")
			end
		end ]]
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MECS
 ----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('mecs', function(source,args,rawCommand)
 	local user_id = vRP.getUserId(source)
 	local player = vRP.getUserSource(user_id)
 	local oficiais = vRP.getUsersByPermission("mec.permissao")
 	local paramedicos = 0
 	local oficiais_nomes = ""
 		for k,v in ipairs(oficiais) do
 			local identity = vRP.getUserIdentity(parseInt(v))
 			oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
 			paramedicos = paramedicos + 1
 		end
 		TriggerClientEvent("Notify",source,"importante", "Atualmente <b>"..paramedicos.." Mecânicos</b> em serviço.")
 		if parseInt(paramedicos) > 0 then
 			TriggerClientEvent("Notify",source,"importante", oficiais_nomes)
 		end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- P
-----------------------------------------------------------------------------------------------------------------------------------------
local policia = {}
RegisterCommand('p',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local uplayer = vRP.getUserSource(user_id)
	local identity = vRP.getUserIdentity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if vRPclient.getHealth(source) > 102 then
		if vRP.hasPermission(user_id,"policia.permissao") then
			local soldado = vRP.getUsersByPermission("policia.permissao")
			for l,w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player and player ~= uplayer then
					async(function()
						local id = idgens:gen()
						policia[id] = vRPclient.addBlip(player,x,y,z,153,84,"Localização de "..identity.name.." "..identity.firstname,0.5,false)
						TriggerClientEvent("Notify",player,"importante","Localização recebida de <b>"..identity.name.." "..identity.firstname.."</b>.")
						vRPclient._playSound(player,"Out_Of_Bounds_Timer","DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
						SetTimeout(60000,function() vRPclient.removeBlip(player,policia[id]) idgens:free(id) end)
					end)
				end
			end
			TriggerClientEvent("Notify",source,"sucesso","Localização enviada com sucesso.")
			vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pd',function(source,args,rawCommand)
	local h = 1
	local logpd = "" 
	local contador = 0
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "policia.permissao"
		if vRP.hasPermission(user_id,permission) then
			local soldado = vRP.getUsersByPermission(permission)
			for l,w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage',player,identity.name.." "..identity.firstname,{64,179,255},rawCommand:sub(3))
					end)
				end
			end
			
			while args[h] ~= nil and contador < 1 do
				if args[h] == nil then
					contador = contador + 1
					logpd = ""..logpd.." "
				else
					if h == 1 then
						logpd = ""..tostring(args[h])..""
						h = h + 1
					else
						logpd = ""..logpd.." "..tostring(args[h])
						h = h + 1
					end
				end
			end
			SendWebhookMessage(webhookad, "```css\n[CHAT POLICIA]\n[PLAYER] "..user_id.." "..identity.name.." "..identity.firstname.." \n[MENSAGEM]: "..logpd..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ch',function(source,args,rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "chapos.permissao"
		if vRP.hasPermission(user_id,permission) then
			local soldado = vRP.getUsersByPermission(permission)
			for l,w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage',player,identity.name.." "..identity.firstname,{85,107,47},rawCommand:sub(3))
					end)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- AD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ad',function(source,args,rawCommand)
	local h = 1
	local logad = "" 
	local contador = 1
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "chat.permissao"
		if vRP.hasPermission(user_id,permission) then
			local soldado = vRP.getUsersByPermission(permission)
			for l,w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage',player,identity.name.." "..identity.firstname,{218,165,32},rawCommand:sub(3))
					end)
				end
			end
			
			while args[h] ~= nil and contador < 2 do
				if args[h] == nil then
					contador = contador + 1
					logad = ""..logad.." "
				else
					if h == 1 then
						logad = ""..tostring(args[h])
						h = h + 1
					else
						logad = ""..logad.." "..tostring(args[h])
						h = h + 1
					end
				end
			end
			SendWebhookMessage(webhookad, "```css\n[CHAT MOD]\n[PLAYER] "..user_id.." "..identity.name.." "..identity.firstname.." \n[MENSAGEM]: "..logad..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		end
	end
end)
-- chat dos adms
RegisterCommand('k',function(source,args,rawCommand)
	local h = 1
	local logk = "" 
	local contador = 0
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "admin.permissao"
		if vRP.hasPermission(user_id,permission) then
			local soldado = vRP.getUsersByPermission(permission)
			for l,w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage',player,identity.name.." "..identity.firstname,{255,15,192},rawCommand:sub(3))
					end)
				end
			end
			
			while args[h] ~= nil and contador < 1 do
				if args[h] == nil then
					contador = contador + 1
					logk = ""..logk.." "
				else
					if h == 1 then
						logk = ""..tostring(args[h])
						h = h + 1
					else
						logk = ""..logk.." "..tostring(args[h])
						h = h + 1
					end
				end
			end
			SendWebhookMessage(webhookad, "```prolog\n[CHAT ADM]\n[PLAYER] "..user_id.." "..identity.name.." "..identity.firstname.." \n[MENSAGEM]: "..logk..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pr',function(source,args,rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "paramedico.permissao"
		if vRP.hasPermission(user_id,permission) then
			local soldado = vRP.getUsersByPermission(permission)
			for l,w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage',player,identity.name.." "..identity.firstname,{255,175,175},rawCommand:sub(3))
					end)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYTOW
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('paytow',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"paramedico.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			local valor = vRP.prompt(source,"Valor:","")
			if valor == "" then
				return
			end
			valor = parseInt(valor)
			if valor >= 10001 then
				TriggerClientEvent("Notify",source,"negado","Esse valor excede $10.000")
				return
			end
			local nuser_id = vRP.getUserId(nplayer)
			local mecindentity = vRP.getUserIdentity(nuser_id)
			if vRP.hasPermission(nuser_id,"mecanico.permissao") then
				vRP.giveMoney(nuser_id,valor)
				vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
				vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
				TriggerClientEvent("Notify",source,"sucesso","Efetuou o pagamento pelo serviço do mecânico.")
				TriggerClientEvent("Notify",nplayer,"sucesso","Recebeu <b>$"..vRP.format(valor).." dólares</b> pelo serviço de mecânico.")
				SendWebhookMessage(webhookmecpag,"```prolog\n[POLICIAL]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========PAGOU=========] \n[PASSAPORTE]: "..nuser_id.." "..mecindentity.name.." "..mecindentity.firstname.." \n[VALOR]: $"..vRP.format(valor).." \n[MOTIVO]: Servico de Guincho"..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			else
				TriggerClientEvent("Notify",source,"negado","Essa pessoa não é Mecânico.")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOOGLE
-----------------------------------------------------------------------------------------------------------------------------------------
--[[
RegisterCommand('toogle',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"fbi.permissao") then 
		TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaFbi")
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookfbi,"```prolog\n[FBI]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanafbi.permissao") then
		TriggerEvent('eblips:add',{ name = "Fbi", src = source, color = 61 })
		vRP.addUserGroup(user_id,"Fbi")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookfbi,"```prolog\n[FBI]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"swat.permissao") then
		TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaSwat")
		vRPclient.setArmour(source,0)
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookswat,"```prolog\n[SWAT]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanaswat.permissao") then
		TriggerEvent('eblips:add',{ name = "Swat", src = source, color = 47 })
		vRP.addUserGroup(user_id,"Swat")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookswat,"```prolog\n[SWAT]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"policia.permissao") then
		local player = source
		local ped = GetPlayerPed(player)
		local distancedp = GetDistanceBetweenCoords(GetEntityCoords(ped),452.37,-980.11,30.68,true)
		if distancedp <= 40 then
			TriggerEvent('eblips:remove',source)
			vRP.addUserGroup(user_id,"PaisanaPolicia")
			vRPclient.setArmour(source,0)
			vRPclient.giveWeapons(source,{},true)
			TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
			TriggerClientEvent("Notify",source,"aviso","Suas armas foram limpas.")
			local oficiais = vRP.getUsersByPermission("ppolicia.permissao")
			local paramedicos = 0
			for k,v in ipairs(oficiais) do
				paramedicos = paramedicos + 1
			end
			SendWebhookMessage(webhookpolicia,"```prolog\n[POLICIAL]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			SendWebhookMessage(webhookptr,"```prolog\n[PTRs NA CIDADE]: "..paramedicos..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			TriggerClientEvent('desligarRadios',source)
		else
			TriggerClientEvent("Notify",source,"negado","Você está muito longe da DP, não pode encerrar seu serviço!")
		end
	elseif vRP.hasPermission(user_id,"paisanapolicia.permissao") then
		local player = source
		local ped = GetPlayerPed(player)
		local distancedp = GetDistanceBetweenCoords(GetEntityCoords(ped),452.37,-980.11,30.68,true)
		if distancedp <= 40 then
			TriggerEvent('eblips:add',{ name = "Policial", src = source, color = 47 })
			vRP.addUserGroup(user_id,"Policia")
			TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
			local oficiais = vRP.getUsersByPermission("ppolicia.permissao")
			local paramedicos = 0
			for k,v in ipairs(oficiais) do
				paramedicos = paramedicos + 1
			end
			SendWebhookMessage(webhookpolicia,"```prolog\n[POLICIAL]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			SendWebhookMessage(webhookptr,"```c\n[PTRs NA CIDADE]: "..paramedicos..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		else
			TriggerClientEvent("Notify",source,"negado","Você está muito longe da DP, não pode iniciar seu serviço!")
		end
	elseif vRP.hasPermission(user_id,"bombeiro.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaBombeiro")
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[BOMBEIRO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanabombeiro.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"Bombeiro")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[BOMBEIRO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"diretor.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaDiretor")
		vRPclient.giveWeapons(source,{},true)
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanadiretor.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"Diretor")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		vRPclient.giveWeapons(source,{["WEAPON_STUNGUN"] = { ammo = 0 }})
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"paramedicosuperior.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaParamedicosuperior")
		vRPclient.giveWeapons(source,{},true)
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanaparamedicosuperior.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"paramedicosuperior")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		vRPclient.giveWeapons(source,{["WEAPON_STUNGUN"] = { ammo = 0 }})
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"medico.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"Paisanamedico")
		vRPclient.giveWeapons(source,{},true)
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanamedico.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"medico")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		vRPclient.giveWeapons(source,{["WEAPON_STUNGUN"] = { ammo = 0 }})
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
--	elseif vRP.hasPermission(user_id,"medico.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"Paisanamedico")
		vRPclient.giveWeapons(source,{},true)
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanamedico.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"medico")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		vRPclient.giveWeapons(source,{["WEAPON_STUNGUN"] = { ammo = 0 }})
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		
	elseif vRP.hasPermission(user_id,"diretormedico.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaDiretor")
		vRPclient.giveWeapons(source,{},true)
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanadiretor.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"Diretor")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		vRPclient.giveWeapons(source,{["WEAPON_STUNGUN"] = { ammo = 0 }})
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	
	elseif vRP.hasPermission(user_id,"pparamedico.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaParamedico")
		vRPclient.giveWeapons(source,{},true)
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanaparamedico.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"Paramedico")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		vRPclient.giveWeapons(source,{["WEAPON_STUNGUN"] = { ammo = 0 }})
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	
	elseif vRP.hasPermission(user_id,"bennys.permissao") then
		vRP.addUserGroup(user_id,"PaisanaBennys")
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanabennys.permissao") then
		vRP.addUserGroup(user_id,"bennys")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	
	elseif vRP.hasPermission(user_id,"ls.permissao") then
		vRP.addUserGroup(user_id,"PaisanaLS")
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanals.permissao") then
		vRP.addUserGroup(user_id,"ls")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	
	
	elseif vRP.hasPermission(user_id,"mecanico.permissao") then
		vRP.addUserGroup(user_id,"PaisanaMecanico")
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source)
	elseif vRP.hasPermission(user_id,"paisanamecanico.permissao") then
		vRP.addUserGroup(user_id,"Mecanico")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"taxi.permissao") then
		vRP.addUserGroup(user_id,"PaisanaTaxi")
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
	elseif vRP.hasPermission(user_id,"paisanataxi.permissao") then
		vRP.addUserGroup(user_id,"Taxi")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
	end
end)
]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- RTOOGLE
-----------------------------------------------------------------------------------------------------------------------------------------
--[[
RegisterCommand('rtoogle',function(source,args,rawCommand)
	local user_id = parseInt(args[1])
	local source2 = vRP.getUserSource(parseInt(user_id))
	local identity = vRP.getUserIdentity(user_id)
	if vRP.hasPermission(user_id,"fbi.permissao") then 
		TriggerEvent('eblips:remove',source2)
		vRP.addUserGroup(user_id,"PaisanaFbi")
		TriggerClientEvent("Notify",source2,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookfbi,"```prolog\n[FBI]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source2)
	elseif vRP.hasPermission(user_id,"paisanafbi.permissao") then
		TriggerEvent('eblips:add',{ name = "Fbi", src = source2, color = 61 })
		vRP.addUserGroup(user_id,"Fbi")
		TriggerClientEvent("Notify",source2,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookfbi,"```prolog\n[FBI]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"swat.permissao") then
		TriggerEvent('eblips:remove',source2)
		vRP.addUserGroup(user_id,"PaisanaSwat")
		vRPclient.setArmour(source2,0)
		TriggerClientEvent("Notify",source2,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookswat,"```prolog\n[SWAT]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source2)
	elseif vRP.hasPermission(user_id,"paisanaswat.permissao") then
		TriggerEvent('eblips:add',{ name = "Swat", src = source2, color = 47 })
		vRP.addUserGroup(user_id,"Swat")
		TriggerClientEvent("Notify",source2,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookswat,"```prolog\n[SWAT]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"policia.permissao") then
		TriggerEvent('eblips:remove',source2)
		vRP.addUserGroup(user_id,"PaisanaPolicia")
		vRPclient.giveWeapons(source,{},true)
		vRPclient.setArmour(source2,0)
		TriggerClientEvent("Notify",source2,"aviso","Você saiu de serviço.")
		TriggerClientEvent("Notify",source2,"aviso","Suas armas foram limpas.")
		SendWebhookMessage(webhookpolicia,"```prolog\n[POLICIAL]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source2)
	elseif vRP.hasPermission(user_id,"paisanapolicia.permissao") then
		TriggerEvent('eblips:add',{ name = "Policial", src = source2, color = 47 })
		vRP.addUserGroup(user_id,"Policia")
		TriggerClientEvent("Notify",source2,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookpolicia,"```prolog\n[POLICIAL]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"bombeiro.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaBombeiro")
		TriggerClientEvent("Notify",source2,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[BOMBEIRO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source2)
	elseif vRP.hasPermission(user_id,"paisanabombeiro.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"Bombeiro")
		TriggerClientEvent("Notify",source2,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[BOMBEIRO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"pparamedico.permissao") then
		--TriggerEvent('eblips:remove',source)
		vRP.addUserGroup(user_id,"PaisanaParamedico")
		vRPclient.giveWeapons(source,{},true)
		TriggerClientEvent("Notify",source2,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source2)
	elseif vRP.hasPermission(user_id,"paisanaparamedico.permissao") then
		--TriggerEvent('eblips:add',{ name = "Paramedico", src = source, color = 61 })
		vRP.addUserGroup(user_id,"Paramedico")
		TriggerClientEvent("Notify",source2,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookparamedico,"```prolog\n[PARAMEDICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"mecanico.permissao") then
		vRP.addUserGroup(user_id,"PaisanaMecanico")
		TriggerClientEvent("Notify",source2,"aviso","Você saiu de serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[===========SAIU DE SERVICO==========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		TriggerClientEvent('desligarRadios',source2)
	elseif vRP.hasPermission(user_id,"paisanamecanico.permissao") then
		vRP.addUserGroup(user_id,"Mecanico")
		TriggerClientEvent("Notify",source2,"sucesso","Você entrou em serviço.")
		SendWebhookMessage(webhookmecanico,"```prolog\n[MECANICO]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[==========ENTROU EM SERVICO=========] "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	elseif vRP.hasPermission(user_id,"taxista.permissao") then
		vRP.addUserGroup(user_id,"PaisanaTaxista")
		TriggerClientEvent("Notify",source,"aviso","Você saiu de serviço.")
	elseif vRP.hasPermission(user_id,"paisanataxista.permissao") then
		vRP.addUserGroup(user_id,"Taxista")
		TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
	end
	TriggerClientEvent("Notify",source,"sucesso","Você alterou o toogle do <b>ID:"..user_id.."</b>")
end)]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- REANIMAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('reanimar',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"paramedico.permissao") then
		TriggerClientEvent('reanimar',source)
	end
end)

RegisterServerEvent("reanimar:pagamentoexaltado")
AddEventHandler("reanimar:pagamentoexaltado",function()
	local user_id = vRP.getUserId(source)
	if user_id then
		pagamento = math.random(400,900)
		vRP.giveMoney(user_id,pagamento)
		TriggerClientEvent("Notify",source,"sucesso","Recebeu <b>$"..pagamento.." dólares</b> de gorjeta do americano.")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MULTAR
-----------------------------------------------------------------------------------------------------------------------------------------
--[[RegisterCommand('multar',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"guarda.permissao")  then
		local id = vRP.prompt(source,"Passaporte:","")
		local valor = vRP.prompt(source,"Valor:","")
		local motivo = vRP.prompt(source,"Motivo:","")
		if id == "" or valor == "" or motivo == "" then
			return
		end
		local value = vRP.getUData(parseInt(id),"vRP:multas")
		local multas = json.decode(value) or 0
		vRP.setUData(parseInt(id),"vRP:multas",json.encode(parseInt(multas)+parseInt(valor)))
		local oficialid = vRP.getUserIdentity(user_id)
		local identity = vRP.getUserIdentity(parseInt(id))
		local nplayer = vRP.getUserSource(parseInt(id))
		SendWebhookMessage(webhookmultas,"```prolog\n[OFICIAL]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============MULTOU==============] \n[PASSAPORTE]: "..id.." "..identity.name.." "..identity.firstname.." \n[VALOR]: $"..vRP.format(parseInt(valor)).." \n[MOTIVO]: "..motivo.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")

		randmoney = math.random(600,1200)
		vRP.giveMoney(user_id,parseInt(randmoney))
		TriggerClientEvent("Notify",source,"sucesso","Multa aplicada com sucesso.")
		TriggerClientEvent("Notify",source,"importante","Você recebeu <b>$"..vRP.format(parseInt(randmoney)).." dólares</b> de bonificação.")
		TriggerClientEvent("Notify",nplayer,"importante","Você foi multado em <b>$"..vRP.format(parseInt(valor)).." dólares</b>.<br><b>Motivo:</b> "..motivo..".")
		vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
	end
end)]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- OCORRENCIA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ocorrencia',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		local id = vRP.prompt(source,"Passaporte:","")
		local ocorrencia = vRP.prompt(source,"Ocorrência:","")
		if id == "" or ocorrencia == "" then
			return
		end
		local oficialid = vRP.getUserIdentity(user_id)
		local identity = vRP.getUserIdentity(parseInt(id))
		local nplayer = vRP.getUserSource(parseInt(id))
		SendWebhookMessage(webhookocorrencias,"```prolog\n[OFICIAL]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============OCORRENCIA==============] \n[PASSAPORTE]: "..id.." "..identity.name.." "..identity.firstname.."\n[IDENTIDADE]: "..identity.registration.." \n[TELEFONE]: "..identity.phone.." \n[OCORRENCIA]: "..ocorrencia.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")

		TriggerClientEvent("Notify",source,"sucesso","Ocorrência registrada com sucesso.")
		TriggerClientEvent("Notify",nplayer,"importante","Sua <b>Ocorrência</b> foi registrada com sucesso.")
		vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CORREGEDORIA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('corregedoria',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local nome = vRP.prompt(source,"Nome do Denunciado (se nao souber, coloque: NAO SEI:","")
	local ocorrencia = vRP.prompt(source,"Descreva o ocorrido brevemente:","")
	local prova = vRP.prompt(source,"Link da foto/video da denuncia:","")
	if nome == "" or ocorrencia == "" then
		TriggerClientEvent("Notify",source,"negado","Não registrada, tente novamente sem deixar nada em branco.")
		vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
		return
	end
	local oficialid = vRP.getUserIdentity(user_id)
	SendWebhookMessage(webhookcorregedoria,"```prolog\n[CIDADAO]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============DENUNCIA==============] \n[NOME DO DENUNCIADO]: "..nome.."\n[DENUNCIA]: "..ocorrencia.."\n[PROVAS]: "..prova.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")

	TriggerClientEvent("Notify",source,"sucesso","Corregedoria registrada com sucesso.")
	vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRIAGEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('triagem',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"paramedico.permissao") then
		local id = vRP.prompt(source,"Passaporte:","")
		local triagem = vRP.prompt(source,"Triagem:","")
		if id == "" or triagem == "" then
			return
		end
		local oficialid = vRP.getUserIdentity(user_id)
		local identity = vRP.getUserIdentity(parseInt(id))
		local nplayer = vRP.getUserSource(parseInt(id))
		SendWebhookMessage(webhookotriagem,"```prolog\n[PARAMEDICO]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============TRIAGEM==============] \n[PASSAPORTE]: "..id.." "..identity.name.." "..identity.firstname.."\n[IDENTIDADE]: "..identity.registration.." \n[TELEFONE]: "..identity.phone.." \n[TRIAGEM]: "..triagem.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")

		TriggerClientEvent("Notify",source,"sucesso","Triagem registrada com sucesso.")
		TriggerClientEvent("Notify",nplayer,"importante","Sua <b>Triagem</b> foi registrada com sucesso.")
		vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- REGISTRO MECÂNICO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('registro',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"mecanico.permissao") then
		local id = vRP.prompt(source,"Passaporte mecânico:","")
        local id2 = vRP.prompt(source,"Passaporte cliente:","")
		local registro = vRP.prompt(source,"Registro:","")
		local valor = vRP.prompt(source,"Valor:","")
		if id == "" or registro == "" then
			return
		end
		local oficialid = vRP.getUserIdentity(user_id)
		local identity = vRP.getUserIdentity(parseInt(id2))
		local valor = parseInt(valor)
        local nplayer = vRP.getUserSource(parseInt(id2))
        
        if vRP.request(source,"Deseja registrar a tunagem do cliente <b>"..identity.name.." "..identity.firstname.."</b> por <b>R$"..vRP.format(parseInt(valor)).."</b>?",30) then	
            if vRP.request(nplayer,"Aceita pagar a tunagem registrada de <b>"..oficialid.name.." "..oficialid.firstname.."</b> por <b>R$"..vRP.format(parseInt(valor)).."</b> ?",30) then
                if vRP.tryFullPayment(parseInt(id2),parseInt(valor)) then
                    if vRP.hasPermission(user_id,"sport.permissao") then
					SendWebhookMessage(webhookregistro,"```prolog\n[MECÂNICO]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============REGISTRO==============] \n[PASSAPORTE]: "..id2.." "..identity.name.." "..identity.firstname.."\n[IDENTIDADE]: "..identity.registration.." \n[TELEFONE]: "..identity.phone.." \n[TRABALHO FEITO]: "..registro.." \n[VALOR]: $"..valor..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
					elseif vRP.hasPermission(user_id,"bennys.permissao") then
						SendWebhookMessage(webhookregistrobennys,"```prolog\n[MECÂNICO]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============REGISTRO==============] \n[PASSAPORTE]: "..id2.." "..identity.name.." "..identity.firstname.."\n[IDENTIDADE]: "..identity.registration.." \n[TELEFONE]: "..identity.phone.." \n[TRABALHO FEITO]: "..registro.." \n[VALOR]: $"..valor..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
					end

                    TriggerClientEvent("Notify",source,"sucesso","Registro efetuado com sucesso.")
                    TriggerClientEvent("Notify",nplayer,"importante","Seu <b>registro de compra</b> foi efeutado  com sucesso.")
                    vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
                    vRP.giveBankMoney(user_id,valor)
                end
            else
                TriggerClientEvent("Notify",nplayer,"negado","Dinheiro insuficiente.",8000)
                TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.",8000)
            end
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PRENDER
-----------------------------------------------------------------------------------------------------------------------------------------
--[[function roupapreso(user_id)
	local roup = {
		[1885233650] = {
			[1] = { -1,0 },
			[3] = { 2,0 },
			[4] = { 97,16 },
			[5] = { -1,0 },
			[6] = { 27,0 },
			[7] = { -1,0 },			
			[8] = { 15,0 },
			[9] = { 0,0 },
			[10] = { -1,0 },
			[11] = { 238,0 },
			["p0"] = { 5,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { -1,0 }, -- máscara
			[3] = { 131,0 }, -- maos
			[4] = { 100,16 }, -- calça
			[5] = { -1,0 }, -- mochila
			[6] = { 26,0 }, -- sapato
			[7] = { -1,0 }, -- acessorios
			[8] = { 35,1 }, -- blusa
			[9] = { 0,0 }, -- colete
			[10] = { -1,0 }, -- adesivo
			[11] = { 118,0 }, -- jaqueta
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	}

	local player = vRP.getUserSource(parseInt(user_id))

	if player then
		local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
		local tempo = json.decode(value) or 0

		if parseInt(tempo) >= 1 then
			local custom = roup
			if custom then
				local old_custom = vRPclient.getCustomization(player)
				local idle_copy = {}

				idle_copy = vRP.save_idle_custom(player,old_custom)
				idle_copy.modelhash = nil

				for l,w in pairs(custom[old_custom.modelhash]) do
					idle_copy[l] = w
				end
				vRPclient._setCustomization(player,idle_copy)
			end
		elseif parseInt(tempo) == 0 then
			vRP.removeCloak(player)
		end
	end
end]]

-----------------------------------------------------------------------------------------------------------------------------------------
-- PRENDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('prender',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		local crimes = vRP.prompt(source,"Crimes:","")
		if crimes == "" then
			return
		end

		local player = vRP.getUserSource(parseInt(args[1]))

		local sent = parseInt(args[2])

		if sent <= 50 then
			TriggerClientEvent("Notify",source,"importante","Prisão menor que 50 meses, prender na Delegacia")
			return
		end

		if player then
			vRP.setUData(parseInt(args[1]),"vRP:prisao",json.encode(parseInt(args[2])))
			vRP.setUData(parseInt(args[1]),"vRP:porte",json.encode("Retirado"))
			vRPclient.setHandcuffed(player,false)
			TriggerClientEvent('prisioneiro',player,true)
			vRPclient.teleport(player,1680.1,2513.0,45.5)
			--roupapreso(parseInt(args[1]))
			prison_lock(parseInt(args[1]))
			TriggerClientEvent('removealgemas',player)
			TriggerClientEvent("vrp_sound:source",player,'jaildoor',0.7)
			TriggerClientEvent("vrp_sound:source",source,'jaildoor',0.7)

			
			local oficialid = vRP.getUserIdentity(user_id)
			local identity = vRP.getUserIdentity(parseInt(args[1]))
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			SendWebhookMessage(webhookprender,"```prolog\n[OFICIAL]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============PRENDEU==============] \n[PASSAPORTE]: "..(args[1]).." "..identity.name.." "..identity.firstname.." \n[TEMPO]: "..vRP.format(parseInt(args[2])).." Meses \n[CRIMES]: "..crimes.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			
			randmoney = math.random(600,1200)
			vRP.giveMoney(user_id,parseInt(randmoney))
			TriggerClientEvent("Notify",source,"sucesso","Prisão efetuada com sucesso.")
			TriggerClientEvent("Notify",source,"importante","Você recebeu <b>$"..vRP.format(parseInt(randmoney)).." dólares</b> de bonificação.")
			TriggerClientEvent("Notify",nplayer,"importante","Você foi preso por <b>"..vRP.format(parseInt(args[2])).." meses</b>.<br><b>Motivo:</b> "..crimes..".")
			vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
		end 
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRENDERADV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('prenderadv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		local crimes = vRP.prompt(source,"Crimes:","")
		if crimes == "" then
			return
		end

		local player = vRP.getUserSource(parseInt(args[1]))

		local sent = parseInt(args[2])

		if player then
			vRP.setUData(parseInt(args[1]),"vRP:prisao",json.encode(parseInt(args[2])))
			vRPclient.setHandcuffed(player,false)
			TriggerClientEvent('prisioneiroser',player,false)
			TriggerClientEvent('prisioneiro',player,true)
			vRPclient.teleport(player,1680.1,2513.0,45.5)
			--roupapreso(parseInt(args[1]))
			prison_lock(parseInt(args[1]))
			TriggerClientEvent('removealgemas',player)
			TriggerClientEvent("vrp_sound:source",player,'jaildoor',0.7)
			TriggerClientEvent("vrp_sound:source",source,'jaildoor',0.7)

			
			local oficialid = vRP.getUserIdentity(user_id)
			local identity = vRP.getUserIdentity(parseInt(args[1]))
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			SendWebhookMessage(webhookprender,"```prolog\n[ADM]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============ADVERTIU==============] \n[PASSAPORTE]: "..(args[1]).." "..identity.name.." "..identity.firstname.." \n[TEMPO]: "..vRP.format(parseInt(args[2])).." Meses \n[CRIMES]: "..crimes.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			
			randmoney = math.random(600,1200)
			vRP.giveMoney(user_id,parseInt(randmoney))
			TriggerClientEvent("Notify",source,"sucesso","Prisão efetuada com sucesso.")
			TriggerClientEvent("Notify",source,"importante","Você recebeu <b>$"..vRP.format(parseInt(randmoney)).." dólares</b> de bonificação.")
			TriggerClientEvent("Notify",nplayer,"importante","Você foi preso por <b>"..vRP.format(parseInt(args[2])).." meses</b>.<br><b>Motivo:</b> "..crimes..".")
			vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
		end 
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRENDERDP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('prenderdp',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		local crimes = vRP.prompt(source,"Crimes:","")
		if crimes == "" then
			return
		end

		local player = vRP.getUserSource(parseInt(args[1]))

		local sent = parseInt(args[2])

		if sent > 50 then
			TriggerClientEvent("Notify",source,"importante","Prisão excede os 50 meses, necessita-se presídio")
			return
		end


		if player then
			vRP.setUData(parseInt(args[1]),"vRP:prisao",json.encode(parseInt(args[2])))
			vRP.setUData(parseInt(args[1]),"vRP:porte",json.encode("Retirado"))
			vRPclient.setHandcuffed(player,false)
			TriggerClientEvent('prisioneiroser',player,false)
			TriggerClientEvent('prisioneiro',player,true)
			vRPclient.teleport(player,-1098.29,-821.07,5.48)
			prison_lockdp(parseInt(args[1]))
			TriggerClientEvent('removealgemas',player)
			TriggerClientEvent("vrp_sound:source",player,'jaildoor',0.7)
			TriggerClientEvent("vrp_sound:source",source,'jaildoor',0.7)

			
			local oficialid = vRP.getUserIdentity(user_id)
			local identity = vRP.getUserIdentity(parseInt(args[1]))
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			SendWebhookMessage(webhookprender,"```prolog\n[OFICIAL]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============PRENDEU==============] \n[PASSAPORTE]: "..(args[1]).." "..identity.name.." "..identity.firstname.." \n[TEMPO]: "..vRP.format(parseInt(args[2])).." Meses \n[CRIMES]: "..crimes.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			
			randmoney = math.random(300,600)
			vRP.giveMoney(user_id,parseInt(randmoney))
			TriggerClientEvent("Notify",source,"sucesso","Prisão efetuada com sucesso.")
			TriggerClientEvent("Notify",source,"importante","Você recebeu <b>$"..vRP.format(parseInt(randmoney)).." dólares</b> de bonificação.")
			TriggerClientEvent("Notify",nplayer,"importante","Você foi preso por <b>"..vRP.format(parseInt(args[2])).." meses</b>.<br><b>Motivo:</b> "..crimes..".")
			vRPclient.playSound(source,"Hack_Success","DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
		end 
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SERVIÇO COMUNITARIO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('prenderservico',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		local crimes = vRP.prompt(source,"Crimes:","")
		if crimes == "" then
			return
		end

		local player = vRP.getUserSource(parseInt(args[1]))

		local sent = parseInt(args[2])
		
		if sent <= 35 then
			TriggerClientEvent("Notify",source,"importante","Prisão menor que 35 meses, prenda na DP!")
			return
		end

		if player then
			vRP.setUData(parseInt(args[1]),"vRP:prisao",json.encode(parseInt(args[2])))
			vRP.setUData(parseInt(args[1]),"vRP:porte",json.encode("Retirado"))
			vRPclient.setHandcuffed(player,false)
			TriggerClientEvent('prisioneiro',player,false)
			TriggerClientEvent('prisioneiroser',player,true)
			vRPclient.teleport(player,-1050.33,-841.0,5.05)
			--roupapreso(parseInt(args[1]))
			prison_lockser(parseInt(args[1]))
			TriggerClientEvent('removealgemas',player)
			local oficialid = vRP.getUserIdentity(user_id)
			local identity = vRP.getUserIdentity(parseInt(args[1]))
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			SendWebhookMessage(webhookprender,"```prolog\n[OFICIAL]: "..user_id.." "..oficialid.name.." "..oficialid.firstname.." \n[==============PENALIZOU==============] \n[PASSAPORTE]: "..(args[1]).." "..identity.name.." "..identity.firstname.." \n[TEMPO]: "..vRP.format(parseInt(args[2])).." Meses \n[CRIMES]: "..crimes.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			
			randmoney = math.random(300,600)
			vRP.giveMoney(user_id,parseInt(randmoney))
			TriggerClientEvent("Notify",source,"sucesso","Prisão efetuada com sucesso.")
			TriggerClientEvent("Notify",source,"importante","Você recebeu <b>$"..vRP.format(parseInt(randmoney)).." dólares</b> de bonificação.")
			TriggerClientEvent("Notify",nplayer,"importante","Você foi penalizado por <b>"..vRP.format(parseInt(args[2])).." meses</b>.<br><b>Motivo:</b> "..crimes..".")
		end 
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RG
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rg',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"polpar.permissao") or vRP.hasPermission(user_id,"mod.permissao") or vRP.hasPermission(user_id,"conce.permissao") or vRP.hasPermission(user_id,"juiz.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer == nil then
				TriggerClientEvent("Notify",source,"aviso","Passaporte <b>"..vRP.format(args[1]).."</b> indisponível no momento.")
				return
			end
			nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local value = vRP.getUData(nuser_id,"vRP:multas")
				
				local value2 = vRP.getUData(nuser_id,"vRP:porte")
				local porte = json.decode(value2) or ""
				if porte == "" then
					porte = "Nenhum"
				end
				
				local valormultas = json.decode(value) or 0
				local identity = vRP.getUserIdentity(nuser_id)
				local carteira = vRP.getMoney(nuser_id)
				local banco = vRP.getBankMoney(nuser_id)
				vRPclient.setDiv(source,"completerg",".div_completerg { background-color: rgba(0,0,0,0.60); font-size: 13px; font-family: arial; color: #fff; width: 420px; padding: 20px 20px 5px; bottom: 8%; right: 2.5%; position: absolute; border: 1px solid rgba(255,255,255,0.2); letter-spacing: 0.5px; } .local { width: 220px; padding-bottom: 15px; float: left; } .local2 { width: 200px; padding-bottom: 15px; float: left; } .local b, .local2 b { color: #d1257d; }","<div class=\"local\"><b>Nome:</b> "..identity.name.." "..identity.firstname.." ( "..vRP.format(identity.user_id).." )</div><div class=\"local2\"><b>Identidade:</b> "..identity.registration.."</div><div class=\"local\"><b>Idade:</b> "..identity.age.." Anos</div><div class=\"local2\"><b>Telefone:</b> "..identity.phone.."</div><div class=\"local\"><b>Multas pendentes:</b> "..vRP.format(parseInt(valormultas)).."</div><div class=\"local2\"><b>Porte:</b> "..porte.."</div>")
				vRP.request(source,"Você deseja fechar o registro geral?",1000)
				vRPclient.removeDiv(source,"completerg")
			end
		else
			local nplayer = vRPclient.getNearestPlayer(source,2)
			local nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local value = vRP.getUData(nuser_id,"vRP:multas")
				
				local value2 = vRP.getUData(nuser_id,"vRP:porte")
				local porte = json.decode(value2) or ""
				if porte == "" then
					porte = "Nenhum"
				end
				
				local valormultas = json.decode(value) or 0
				local identityv = vRP.getUserIdentity(user_id)
				local identity = vRP.getUserIdentity(nuser_id)
				local carteira = vRP.getMoney(nuser_id)
				local banco = vRP.getBankMoney(nuser_id)
				TriggerClientEvent("Notify",nplayer,"importante","Seu documento está sendo verificado por <b>"..identityv.name.." "..identityv.firstname.."</b>.")
				vRPclient.setDiv(source,"completerg",".div_completerg { background-color: rgba(0,0,0,0.60); font-size: 13px; font-family: arial; color: #fff; width: 420px; padding: 20px 20px 5px; bottom: 8%; right: 2.5%; position: absolute; border: 1px solid rgba(255,255,255,0.2); letter-spacing: 0.5px; } .local { width: 220px; padding-bottom: 15px; float: left; } .local2 { width: 200px; padding-bottom: 15px; float: left; } .local b, .local2 b { color: #d1257d; }","<div class=\"local\"><b>Nome:</b> "..identity.name.." "..identity.firstname.." ( "..vRP.format(identity.user_id).." )</div><div class=\"local2\"><b>Identidade:</b> "..identity.registration.."</div><div class=\"local\"><b>Idade:</b> "..identity.age.." Anos</div><div class=\"local2\"><b>Telefone:</b> "..identity.phone.."</div><div class=\"local\"><b>Multas pendentes:</b> "..vRP.format(parseInt(valormultas)).."</div><div class=\"local2\"><b>Porte:</b> "..porte.."</div>")
				vRP.request(source,"Você deseja fechar o registro geral?",1000)
				vRPclient.removeDiv(source,"completerg")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ALGEMAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vrp_policia:algemar")
AddEventHandler("vrp_policia:algemar",function()
	local source = source
	local user_id = vRP.getUserId(source)
	local nplayer = vRPclient.getNearestPlayer(source,2)
	if nplayer then
		if not vRPclient.isHandcuffed(source) then
			if vRP.getInventoryItemAmount(user_id,"algemas") >= 1 then
				if vRPclient.isHandcuffed(nplayer) then
					TriggerClientEvent('carregar',nplayer,source)
					vRPclient._playAnim(source,false,{{"mp_arresting","a_uncuff"}},false)
					SetTimeout(5000,function()
						vRPclient.toggleHandcuff(nplayer)
						TriggerClientEvent('carregar',nplayer,source)
						TriggerClientEvent("vrp_sound:source",source,'uncuff',0.1)
						TriggerClientEvent("vrp_sound:source",nplayer,'uncuff',0.1)
						--TriggerClientEvent('cancelando:elevator',nplayer,false)
						TriggerClientEvent('removealgemas',nplayer)
					end)
				else
					TriggerClientEvent('cancelando',source,true)
					TriggerClientEvent('cancelando',nplayer,true)
					TriggerClientEvent('carregar',nplayer,source)
					vRPclient._playAnim(source,false,{{"mp_arrest_paired","cop_p2_back_left"}},false)
					vRPclient._playAnim(nplayer,false,{{"mp_arrest_paired","crook_p2_back_left"}},false)
					SetTimeout(3500,function()
						vRPclient._stopAnim(source,false)
						vRPclient.toggleHandcuff(nplayer)
						TriggerClientEvent('carregar',nplayer,source)
						TriggerClientEvent('cancelando',source,false)
						TriggerClientEvent('cancelando',nplayer,false)
						--TriggerClientEvent('cancelando:elevator',nplayer,true)
						TriggerClientEvent("vrp_sound:source",source,'cuff',0.1)
						TriggerClientEvent("vrp_sound:source",nplayer,'cuff',0.1)
						TriggerClientEvent('setalgemas',nplayer)
					end)
				end
			else
				if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"policia.permissao") then
					if vRPclient.isHandcuffed(nplayer) then
						TriggerClientEvent('carregar',nplayer,source)
						vRPclient._playAnim(source,false,{{"mp_arresting","a_uncuff"}},false)
						SetTimeout(5000,function()
							vRPclient.toggleHandcuff(nplayer)
							TriggerClientEvent('carregar',nplayer,source)
							TriggerClientEvent("vrp_sound:source",source,'uncuff',0.1)
							TriggerClientEvent("vrp_sound:source",nplayer,'uncuff',0.1)
							--TriggerClientEvent('cancelando:elevator',nplayer,false)
							TriggerClientEvent('removealgemas',nplayer)
						end)
					else
						TriggerClientEvent('cancelando',source,true)
						TriggerClientEvent('cancelando',nplayer,true)
						TriggerClientEvent('carregar',nplayer,source)
						vRPclient._playAnim(source,false,{{"mp_arrest_paired","cop_p2_back_left"}},false)
						vRPclient._playAnim(nplayer,false,{{"mp_arrest_paired","crook_p2_back_left"}},false)
						SetTimeout(3500,function()
							vRPclient._stopAnim(source,false)
							vRPclient.toggleHandcuff(nplayer)
							TriggerClientEvent('carregar',nplayer,source)
							TriggerClientEvent('cancelando',source,false)
							TriggerClientEvent('cancelando',nplayer,false)
							--TriggerClientEvent('cancelando:elevator',nplayer,true)
							TriggerClientEvent("vrp_sound:source",source,'cuff',0.1)
							TriggerClientEvent("vrp_sound:source",nplayer,'cuff',0.1)
							TriggerClientEvent('setalgemas',nplayer)
						end)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARREGAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vrp_policia:carregar")
AddEventHandler("vrp_policia:carregar",function()
	local source = source
	local user_id = vRP.getUserId(source)
	local nplayer = vRPclient.getNearestPlayer(source,2)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"polpar.permissao") or vRP.hasPermission(user_id,"mod.permissao") then	
		if nplayer then
			if not vRPclient.isHandcuffed(source) then
				TriggerClientEvent('carregar',nplayer,source)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RMASCARA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rmascara',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			TriggerClientEvent('rmascara',nplayer)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RCHAPEU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rchapeu',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			TriggerClientEvent('rchapeu',nplayer)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RCAPUZ
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rcapuz',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			if vRPclient.isCapuz(nplayer) then
				vRPclient.setCapuz(nplayer)
				TriggerClientEvent("Notify",source,"sucesso","Capuz colocado com sucesso.")
			else
				TriggerClientEvent("Notify",source,"importante","A pessoa não está com o capuz na cabeça.")
			end
		end
	end
end)

RegisterCommand('remhood',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"admin.permissao") then
        if source then
            if vRPclient.isCapuz(source) then
                vRPclient.setCapuz(source)
                TriggerClientEvent("Notify",source,"sucesso","Capuz removido com sucesso.")
            else
                TriggerClientEvent("Notify",source,"importante","Você não está com o capuz na cabeça.")
            end
        end
    end
end)
-------------------------------------------------------------------------------------------------------------------------------------
-- RE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('re',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local medicos = vRP.getUsersByPermission("paramedico.permissao")
	local nmedicos = 0
	for k,v in ipairs(medicos) do
		nmedicos = nmedicos + 1
 	end
	if vRP.hasPermission(user_id,"policia.permissao") then
		if nmedicos == 0 then
			local nplayer = vRPclient.getNearestPlayer(source,2)
			if nplayer then
				if vRPclient.isInComa(nplayer) then
					local identity_user = vRP.getUserIdentity(user_id)
					local nuser_id = vRP.getUserId(nplayer)
					local identity_coma = vRP.getUserIdentity(nuser_id)
					local set_user = "Policia"
					TriggerClientEvent('cancelando',source,true)
					vRPclient._playAnim(source,false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
					TriggerClientEvent("progress",source,30000,"reanimando")
					SetTimeout(30000,function()
						SendWebhookMessage(webhookre,"```prolog\n[ID]: "..user_id.." "..identity_user.name.." "..identity_user.firstname.." \n[REVIVEU]: "..nuser_id.." "..identity_coma.name.." "..identity_coma.firstname .. "\n[SET]: "..set_user..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
						vRPclient.killGod(nplayer)
						vRPclient._stopAnim(source,false)
						vRPclient._stopAnim(nplayer,false)
						vRPclient.loadAnimSet(nplayer,"move_m@injured")
						vRP.giveMoney(user_id,200)
						TriggerClientEvent("resetBleeding",nplayer)
						TriggerClientEvent('cancelando',source,false)
					end)
				else
					TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar em coma para prosseguir.")
				end
			end
		else
			TriggerClientEvent("Notify",source,"importante","Não é possível reanimar, existem médicos em serviço")
		end
	elseif vRP.hasPermission(user_id,"paramedico.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			if vRPclient.isInComa(nplayer) then
				local identity_user = vRP.getUserIdentity(user_id)
				local nuser_id = vRP.getUserId(nplayer)
				local identity_coma = vRP.getUserIdentity(nuser_id)
				local set_user = "Policia"
				if vRP.hasPermission(user_id,"paramedico.permissao") then
					set_user = "Paramedico"
				end
				TriggerClientEvent('cancelando',source,true)
				vRPclient._playAnim(source,false,{{"amb@medic@standing@tendtodead@base","base"},{"mini@cpr@char_a@cpr_str","cpr_pumpchest"}},true)
				TriggerClientEvent("progress",source,30000,"reanimando")
				SetTimeout(30000,function()
					SendWebhookMessage(webhookre,"```prolog\n[ID]: "..user_id.." "..identity_user.name.." "..identity_user.firstname.." \n[REVIVEU]: "..nuser_id.." "..identity_coma.name.." "..identity_coma.firstname .. "\n[SET]: "..set_user..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
					vRPclient.killGod(nplayer)
					vRPclient._stopAnim(source,false)
					vRPclient._stopAnim(nplayer,false)
					vRPclient.loadAnimSet(nplayer,"move_m@injured")
					vRP.giveMoney(user_id,200)
					TriggerClientEvent("resetBleeding",nplayer)
					TriggerClientEvent('cancelando',source,false)
				end)
			else
				TriggerClientEvent("Notify",source,"importante","A pessoa precisa estar em coma para prosseguir.")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,10)
		if nplayer then
			vRPclient.putInNearestVehicleAsPassenger(nplayer,7)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,10)
		if nplayer then
			vRPclient.ejectVehicle(nplayer)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- APREENDER
-----------------------------------------------------------------------------------------------------------------------------------------
local itemlist = {
	"enxofre",
	"taurina",
	"energetico2",
	"colete",
	"lancaperfume",
	"dinheirosujo",
	"pano",
	"linha",
	"cartaoclonado",
	"polvora",
	"aco",
	"cmedicinal",
	"dinheirofalso",
	"crack",
	"capsula",
	"notebook",
	"algemas",
	"capuz",
	"lockpick",
	"masterpick",
	"orgao",
	"etiqueta",
	"pendrive",
	"relogioroubado",
	"pulseiraroubada",
	"anelroubado",
	"colarroubado",
	"brincoroubado",
	"carteiraroubada",
	"tabletroubado",
	"sapatosroubado",
	"diamanteroubado",
	"ouroroubado",
	"armacaodearma",
	"pecadearma",
	"maconha",
	"metanfetamina",
	"cocaina",
	"lsd",
	"logsinvasao",
	"acessodeepweb",
	"keysinvasao",
	"pendriveinformacoes",
	"keycard",
	"c4",
	"serra",
	"furadeira",
	"caixacontra",
	"alicatetesoura",
	"wbody|WEAPON_DAGGER",
	"wbody|WEAPON_BAT",
	"wbody|WEAPON_BOTTLE",
	"wbody|WEAPON_CROWBAR",
	"wbody|WEAPON_FLASHLIGHT",
	"wbody|WEAPON_GOLFCLUB",
	"wbody|WEAPON_HAMMER",
	"wbody|WEAPON_HATCHET",
	"wbody|WEAPON_KNUCKLE",
	"wbody|WEAPON_KNIFE",
	"wbody|WEAPON_MACHETE",
	"wbody|WEAPON_SWITCHBLADE",
	"wbody|WEAPON_NIGHTSTICK",
	"wbody|WEAPON_WRENCH",
	"wbody|WEAPON_BATTLEAXE",
	"wbody|WEAPON_POOLCUE",
	"wbody|WEAPON_STONE_HATCHET",
	"wbody|WEAPON_PISTOL",
	"wbody|WEAPON_COMBATPISTOL",
	"wbody|WEAPON_CARBINERIFLE",
	"wbody|WEAPON_SMG",
	"wbody|WEAPON_PUMPSHOTGUN_MK2",
	"wbody|WEAPON_STUNGUN",
	"wbody|WEAPON_NIGHTSTICK",
	"wbody|WEAPON_SNSPISTOL",
	"wbody|WEAPON_MICROSMG",
	"wbody|WEAPON_ASSAULTRIFLE",
	"wbody|WEAPON_ASSAULTRIFLE_MK2",
	"wbody|WEAPON_FIREEXTINGUISHER",
	"wbody|WEAPON_FLARE",
	"wbody|WEAPON_REVOLVER",
	"wbody|WEAPON_PISTOL_MK2",
	"wbody|WEAPON_VINTAGEPISTOL",
	"wbody|WEAPON_MUSKET",
	"wbody|WEAPON_GUSENBERG",
	"wbody|WEAPON_ASSAULTSMG",
	"wbody|WEAPON_COMBATPDW",
	"wbody|WEAPON_COMPACTRIFLE",
	"wbody|WEAPON_CARBINERIFLE_MK2",
 	"wbody|WEAPON_MACHINEPISTOL",
	"wammo|WEAPON_DAGGER",
	"wammo|WEAPON_BAT",
	"wammo|WEAPON_BOTTLE",
	"wammo|WEAPON_CROWBAR",
	"wammo|WEAPON_FLASHLIGHT",
	"wammo|WEAPON_GOLFCLUB",
	"wammo|WEAPON_HAMMER",
	"wammo|WEAPON_HATCHET",
	"wammo|WEAPON_KNUCKLE",
	"wammo|WEAPON_KNIFE",
	"wammo|WEAPON_MACHETE",
	"wammo|WEAPON_SWITCHBLADE",
	"wammo|WEAPON_NIGHTSTICK",
	"wammo|WEAPON_WRENCH",
	"wammo|WEAPON_BATTLEAXE",
	"wammo|WEAPON_POOLCUE",
	"wammo|WEAPON_STONE_HATCHET",
	"wammo|WEAPON_PISTOL",
	"wammo|WEAPON_COMBATPISTOL",
	"wammo|WEAPON_CARBINERIFLE",
	"wammo|WEAPON_SMG",
	"wammo|WEAPON_PUMPSHOTGUN",
	"wammo|WEAPON_PUMPSHOTGUN_MK2",
	"wammo|WEAPON_STUNGUN",
	"wammo|WEAPON_NIGHTSTICK",
	"wammo|WEAPON_SNSPISTOL",
	"wammo|WEAPON_MICROSMG",
	"wammo|WEAPON_ASSAULTRIFLE",
	"wammo|WEAPON_ASSAULTRIFLE_MK2",
	"wammo|WEAPON_FIREEXTINGUISHER",
	"wammo|WEAPON_FLARE",
	"wammo|WEAPON_REVOLVER",
	"wammo|WEAPON_PISTOL_MK2",
	"wammo|WEAPON_VINTAGEPISTOL",
	"wammo|WEAPON_MUSKET",
	"wammo|WEAPON_GUSENBERG",
	"wammo|WEAPON_ASSAULTSMG",
	"wammo|WEAPON_COMBATPDW",
	"wammo|WEAPON_MACHINEPISTOL",
	"wammo|WEAPON_CARBINERIFLE_MK2",
	"wammo|WEAPON_COMPACTRIFLE"
}

RegisterCommand('apreender',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		local user_id = vRP.getUserId(source)

		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			local identity = vRP.getUserIdentity(user_id)
			local nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local nidentity = vRP.getUserIdentity(nuser_id)
				local itens_apreendidos = {}
				local weapons = vRPclient.replaceWeapons(nplayer,{})
				for k,v in pairs(weapons) do
					vRP.giveInventoryItem(nuser_id,"wbody|"..k,1)
					if v.ammo > 0 then
						vRP.giveInventoryItem(nuser_id,"wammo|"..k,v.ammo)
					end
				end

				local inv = vRP.getInventory(nuser_id)
				for k,v in pairs(itemlist) do
					local sub_items = { v }
					if string.sub(v,1,1) == "*" then
						local idname = string.sub(v,2)
						sub_items = {}
						for fidname,_ in pairs(inv) do
							if splitString(fidname,"|")[1] == idname then
								table.insert(sub_items,fidname)

							end
						end
					end

					for _,idname in pairs(sub_items) do
						local amount = vRP.getInventoryItemAmount(nuser_id,idname)
						if amount > 0 then
							local item_name,item_weight = vRP.getItemDefinition(idname)
							if item_name then
								if vRP.tryGetInventoryItem(nuser_id,idname,amount,true) then
									vRP.giveInventoryItem(user_id,idname,amount)
									table.insert(itens_apreendidos, "[ITEM]: "..vRP.itemNameList(idname).." [QUANTIDADE]: "..amount)
								end
							end
						end
					end
				end
				local apreendidos = table.concat(itens_apreendidos, "\n")
				SendWebhookMessage(webhookpoliciaapreendidos,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[APREENDEU DE]:  "..nuser_id.." "..nidentity.name.." "..nidentity.firstname.."\n" .. apreendidos ..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
				TriggerClientEvent("Notify",nplayer,"importante","Todos os seus pertences foram apreendidos.")
				TriggerClientEvent("Notify",source,"importante","Apreendeu todos os pertences da pessoa.")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARSENAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('arsenal',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		TriggerClientEvent('arsenal',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXTRAS
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('extras',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"policia15.permissao") then
        if vRPclient.isInVehicle(source) then
            TriggerClientEvent('extras',source)
        end
    end
end)

RegisterCommand('bumper',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"policia.permissao") then
        if vRPclient.isInVehicle(source) then
            TriggerClientEvent('extrasParachoque',source)
        end
    end
end)

RegisterCommand('soltar',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
	if user_id then
		TriggerClientEvent('removealgemas',source)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYEXTRAS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryextras")
AddEventHandler("tryextras",function(index,extra)
    TriggerClientEvent("syncextras",-1,index,parseInt(extra))
end)

RegisterServerEvent("tryextrasParachoque")
AddEventHandler("tryextrasParachoque",function(index,extra)
	TriggerClientEvent("syncextrasParachoque",-1,index,parseInt(extra))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cone',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"polpar.permissao") or vRP.hasPermission(user_id,"conce.permissao") or vRP.hasPermission(user_id,"mecanico.permissao") or vRP.hasPermission(user_id,"bennys.permissao") then
		TriggerClientEvent('cone',source,args[1])
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARREIRA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('barreira',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"polpar.permissao") or vRP.hasPermission(user_id,"conce.permissao") or vRP.hasPermission(user_id,"mecanico.permissao") or vRP.hasPermission(user_id,"bennys.permissao") then
		TriggerClientEvent('barreira',source,args[1])
	end
end)

RegisterCommand('container',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		TriggerClientEvent('container',source,args[1])
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPIKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('spike',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		TriggerClientEvent('spike',source,args[1])
	end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------
-- DISPAROS
--------------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('atirando')
AddEventHandler('atirando',function(x,y,z)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)

	if user_id then
		SendWebhookMessage(webhookdisparo,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[=========DISPAROU EM=========]: \n[COORDs]:"..x..","..y..","..z.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		if not vRP.hasPermission(user_id,"disparos.permissao") then
			local policiais = vRP.getUsersByPermission("policia.permissao")
			for l,w in pairs(policiais) do
				local player = vRP.getUserSource(w)
				if player then
					TriggerClientEvent('notificacao',player,x,y,z,user_id)
				end
			end			
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('anuncio',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"conce.permissao") or vRP.hasPermission(user_id,"news.permissao") then
		local identity = vRP.getUserIdentity(user_id)
		local mensagem = vRP.prompt(source,"Mensagem:","")
		if mensagem == "" then
			return
		end
		vRPclient.setDiv(-1,"anuncio",".div_anuncio { background: rgba(0,128,192,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 7%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 15px; }","<bold>"..mensagem.."</bold><br><br>Mensagem enviada por: "..identity.name.." "..identity.firstname)
		SetTimeout(30000,function()
			vRPclient.removeDiv(-1,"anuncio")
		end)
	end
end)

--------------------------------------------------------------------------------------------------------------------------------------------------
-- PRISÃO
--------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	local player = vRP.getUserSource(parseInt(user_id))
	if player then
		SetTimeout(30000,function()
			local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
			local tempo = json.decode(value) or -1

			if tempo == -1 then
				return
			end

			if tempo <= 40 and tempo > 0 then
				TriggerClientEvent('prisioneiro',player,true)
				vRPclient.teleport(player,-1098.29,-821.07,5.48)
				prison_lockdp(parseInt(user_id))
				TriggerClientEvent("Notify",player,"importante","Você foi transferido para a DP")
			else
				TriggerClientEvent('prisioneiro',player,true)
				vRPclient.teleport(player,1680.1,2513.0,46.5)
				prison_lock(parseInt(user_id))
				TriggerClientEvent("Notify",player,"importante","Você foi transferido para o Presídio")
			end
		end)
	end
end)

function prison_lock(target_id)
	local player = vRP.getUserSource(parseInt(target_id))
	if player then
		SetTimeout(60000,function()
			local value = vRP.getUData(parseInt(target_id),"vRP:prisao")
			local tempo = json.decode(value) or 0
			if parseInt(tempo) >= 1 then
				TriggerClientEvent("Notify",player,"importante","Ainda vai passar <b>"..parseInt(tempo).." meses</b> preso.")
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(parseInt(tempo)-1))
				prison_lock(parseInt(target_id))
			elseif parseInt(tempo) == 0 then
				TriggerClientEvent('prisioneiro',player,false)
				vRP.removeCloak(player)
				vRPclient.teleport(player,1850.5,2604.0,45.5)
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(-1))
				TriggerClientEvent("Notify",player,"importante","Sua sentença terminou, esperamos não ve-lo novamente.")
				TriggerClientEvent("radio:prisao", player, true)
			end
			vRPclient.PrisionGod(player)
		end)
	end
end

function prison_lockdp(target_id)
	local player = vRP.getUserSource(parseInt(target_id))
	if player then
		SetTimeout(60000,function()
			local value = vRP.getUData(parseInt(target_id),"vRP:prisao")
			local tempo = json.decode(value) or 0
			if parseInt(tempo) >= 1 then
				TriggerClientEvent("Notify",player,"importante","Ainda vai passar <b>"..parseInt(tempo).." meses</b> preso.")
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(parseInt(tempo)-1))
				prison_lockdp(parseInt(target_id))
			elseif parseInt(tempo) == 0 then
				TriggerClientEvent('prisioneiro',player,false)
				vRPclient.teleport(player,-1091.64,-804.99,19.29) --porta DP
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(-1))
				TriggerClientEvent("Notify",player,"importante","Sua sentença terminou, esperamos não ve-lo novamente.")
				TriggerClientEvent("radio:prisao", player, true)
			end
			vRPclient.PrisionGod(player)
		end)
	end
end

function prison_lockser(target_id)
	local player = vRP.getUserSource(parseInt(target_id))
	if player then
		SetTimeout(60000,function()
			local value = vRP.getUData(parseInt(target_id),"vRP:prisao")
			local tempo = json.decode(value) or 0
			if parseInt(tempo) >= 1 then
				TriggerClientEvent("Notify",player,"importante","Ainda vai passar <b>"..parseInt(tempo).." meses</b> penalizado.")
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(parseInt(tempo)-1))
				prison_lockser(parseInt(target_id))
			elseif parseInt(tempo) == 0 then
				TriggerClientEvent('prisioneiroser',player,false)
				vRP.removeCloak(player)
				vRPclient.teleport(player,-1091.72,-805.32,19.28)  --local da porta DP
				vRP.setUData(parseInt(target_id),"vRP:prisao",json.encode(-1))
				TriggerClientEvent("Notify",player,"importante","Sua sentença terminou, esperamos não ve-lo novamente.")
				TriggerClientEvent("radio:prisao", player, true)
			end
			vRPclient.PrisionGod(player)
		end)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DIMINUIR PENA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("diminuirpenabig")
AddEventHandler("diminuirpenabig",function()
	local source = source
	local user_id = vRP.getUserId(source)
	local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
	local tempo = json.decode(value) or 0
	if tempo >= 20 then
		vRP.setUData(parseInt(user_id),"vRP:prisao",json.encode(parseInt(tempo)-2))
		TriggerClientEvent("Notify",source,"importante","Sua pena foi reduzida em <b>2 meses</b>, continue o trabalho.")
	else
		TriggerClientEvent("Notify",source,"importante","Atingiu o limite da redução de pena, não precisa mais trabalhar.")
	end
end)

RegisterServerEvent("diminuirpenaservicobig")
AddEventHandler("diminuirpenaservicobig",function()
	local source = source
	local user_id = vRP.getUserId(source)
	local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
	local tempo = json.decode(value) or 0
	if tempo >= 2 then
		vRP.setUData(parseInt(user_id),"vRP:prisao",json.encode(parseInt(tempo)-1))
		TriggerClientEvent("Notify",source,"importante","Sua pena foi reduzida em <b>1 mes</b>, continue o trabalho.")
	else
		TriggerClientEvent("Notify",source,"importante","Atingiu o limite da redução de pena, não precisa mais trabalhar.")
	end
end)

RegisterServerEvent("aumentarpena")
AddEventHandler("aumentarpena",function()
	local source = source
	local user_id = vRP.getUserId(source)
	local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
	local tempo = json.decode(value) or 0
	if tempo >= 1 then
		vRP.setUData(parseInt(user_id),"vRP:prisao",json.encode(parseInt(tempo)+10))
		TriggerClientEvent("Notify",source,"importante","Sua pena foi aumentada em <b>10 meses</b>, nao fuja.")
	end
end)

RegisterServerEvent("tirarcarro")
AddEventHandler("tirarcarro",function()
	local source = source
	local user_id = vRP.getUserId(source)
	local value = vRP.getUData(parseInt(user_id),"vRP:prisao")
	local tempo = json.decode(value) or 0
	if vRPclient.isInVehicle(source) then
		vRP.setUData(parseInt(user_id),"vRP:prisao",json.encode(parseInt(tempo)+3))
		TriggerClientEvent("Notify",source,"importante","Sua pena foi aumentada em <b>3 meses</b>, nao entre em veiculos.")
		vRPclient.ejectVehicle(source)
	end
end)

RegisterServerEvent("maconhas")
AddEventHandler("maconhas",function()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		TriggerClientEvent("progress",source,10000,"Consumindo")
		SetTimeout(10000,function()
			vRPclient.playScreenEffect(source,"RaceTurbo",180)
			vRPclient.playScreenEffect(source,"DrugsTrevorClownsFight",180)
		end)
		return true
	end
end)

RegisterServerEvent("bebida")
AddEventHandler("bebida",function()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		TriggerClientEvent("progress",source,10000,"Apreciando")
		SetTimeout(10000,function()
			vRPclient.playScreenEffect(source,"RaceTurbo",180)
			vRPclient.playScreenEffect(source,"DrugsTrevorClownsFight",180)
			TriggerClientEvent("Notify",source,"importante","Beba com moderação, aproveite nossa festa! <b>H&J</b>")
		end)
		return true
	end
end)

RegisterServerEvent("dead")
AddEventHandler("dead", function()
	local source = source
	local user_id = vRP.getUserId(source)
	if source then 
		if vRPclient.isInComa(source) then
			return true
		end
	end
end)

RegisterServerEvent("position")
AddEventHandler("position",function()
	local source = source
	local user_id = vRP.getUserId(source)
	local uplayer = vRP.getUserSource(user_id)
	local identity = vRP.getUserIdentity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if vRPclient.getHealth(source) > 102 then
		if vRP.hasPermission(user_id,"policia.permissao") then
			local soldado = vRP.getUsersByPermission("policia.permissao")
			for l,w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player and player ~= uplayer then
					async(function()
						local id = idgens:gen()
						policia[id] = vRPclient.addBlip(player,x,y,z,153,84,"Localização de "..identity.name.." "..identity.firstname,0.5,false)
						TriggerClientEvent("Notify",player,"importante","Localização recebida de <b>"..identity.name.." "..identity.firstname.."</b>.")
						vRPclient._playSound(player,"Out_Of_Bounds_Timer","DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
						SetTimeout(20000,function() vRPclient.removeBlip(player,policia[id]) idgens:free(id) end)
					end)
				end
			end
			TriggerClientEvent("Notify",source,"sucesso","Localização enviada com sucesso.")
			vRPclient.playSound(source,"Event_Message_Purple","GTAO_FM_Events_Soundset")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRESET
-----------------------------------------------------------------------------------------------------------------------------------------
local presets = {
	["1"] = {
		[1885233650] = {
			[1] = { 141,0 },
			[3] = { 4,0 },
			[4] = { 25,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { -1,0 },			
			[8] = { 58,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 26,0 },
			["p0"] = { -1,0 },
			["p1"] = { 5,5 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 141,0 },
			[3] = { 14,0 },
			[4] = { 41,0 },
			[5] = { -1,0 },
			[6] = { 59,1 },
			[7] = { -1,0 },			
			[8] = { 35,0 },
			[9] = { 14,0 },
			[10] = { -1,0 },
			[11] = { 25,0 },			
			["p0"] = { -1,0 },
			["p1"] = { 11,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["2"] = {
		[1885233650] = {
			[1] = { 141,0 },
			[3] = { 0,0 },
			[4] = { 47,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 1,0 },			
			[8] = { 57,0 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 93,0 },		
			["p0"] = { -1,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 141,0 },
			[3] = { 14,0 },
			[4] = { 49,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 1,0 },			
			[8] = { 34,0 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 84,0 },
			["p0"] = { -1,0 },
			["p1"] = { 11,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["tatica"] = {
		[1885233650] = {
			[1] = { 17,13 },
			[3] = { 35,0 },
			[4] = { 31,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 1,0 },			
			[8] = { 57,0 },
			[9] = { 7,1 },
			[10] = { -1,0 },
			[11] = { 111,3 },		
			["p0"] = { -1,0 },
			["p1"] = { 5,6 },
			["p2"] = { 0,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 17,13 },
			[3] = { 36,0 },
			[4] = { 30,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 1,0 },			
			[8] = { 34,0 },
			[9] = { 7,1 },
			[10] = { -1,0 },
			[11] = { 103,3 },
			["p0"] = { -1,0 },
			["p1"] = { 11,0 },
			["p2"] = { 0,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["3"] = {
		--male Vegas
		[1885233650] = {
			[1] = { 141,0 }, -- máscara
            [3] = { 0,0 }, -- maos
            [4] = { 59,9 }, -- calça
            [5] = { -1,0 }, -- mochila
            [6] = { 25,0 }, -- sapato
            [7] = { 0,0 }, -- acessorios
            [8] = { 16,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 93,0 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { 5,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female Vegas
		[-1667301416] = {
			[1] = { 141,0 }, -- máscara
            [3] = { 14,0 }, -- maos
            [4] = { 61,9 }, -- calça
            [5] = { -1,0 }, -- mochila
            [6] = { 25,0 }, -- sapato
            [7] = { 0,0 }, -- acessorios
            [8] = { 9,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 84,0 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { 11,3 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["4"] = {
		--male Vegas
		[1885233650] = {
			[1] = { 141,0 }, -- máscara
            [3] = { 4,0 }, -- maos
            [4] = { 59,9 }, -- calça
            [5] = { -1,0 }, -- mochila
            [6] = { 25,0 }, -- sapato
            [7] = { 125,0 }, -- acessorios
            [8] = { 72,3 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 151,0 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { 5,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female Vegas
		[-1667301416] = {
			[1] = { 141,0 }, -- máscara
            [3] = { 14,0 }, -- maos
            [4] = { 61,9 }, -- calça
            [5] = { -1,0 }, -- mochila
            [6] = { 25,0 }, -- sapato
            [7] = { 95,0 }, -- acessorios
            [8] = { 67,3 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 148,0 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { 11,3 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["5"] = {
		[1885233650] = {
			[1] = { 141,0 },
			[3] = { 20,0 },
			[4] = { 31,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 0,0 },			
			[8] = { 44,0 },
			[9] = { 7,0 },
			[10] = { -1,0 },
			[11] = { 53,0 },		
			["p0"] = { -1,1 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 141,0 },
			[3] = { 31,0 },
			[4] = { 30,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 0,0 },			
			[8] = { 8,0 },
			[9] = { 7,0 },
			[10] = { -1,0 },
			[11] = { 46,0 },
			["p0"] = { -1,0 },
			["p1"] = { 11,3 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["6"] = {
		[1885233650] = {
			[1] = { 141,0 },
			[3] = { 74,0 },
			[4] = { 96,0 },
			[5] = { -1,0 },
			[6] = { 56,1 },
			[7] = { 127,0 },
			[8] = { 56,1 },
			[9] = { -1,0 },
			[10] = { 58,0 },
			[11] = { 250,0 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 141,0 },
			[3] = { 96,0 },
			[4] = { 99,0 },
			[5] = { -1,0 },
			[6] = { 27,0 },
			[7] = { 97,0 },
			[8] = { 27,1 },
			[9] = { -1,0 },
			[10] = { 66,0 },
			[11] = { 258,0 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["7"] = {
		[1885233650] = {
			[1] = { 141,0 },
			[3] = { 81,0 },
			[4] = { 10,0 },
			[5] = { -1,0 },
			[6] = { 56,1 },
			[7] = { 127,0 },			
			[8] = { 56,1 },
			[9] = { -1,0 },
			[10] = { 58,0 },
			[11] = { 95,1 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 141,0 },
			[3] = { 106,1 },
			[4] = { 37,0 },
			[5] = { 0,0 },
			[6] = { 27,0 },
			[7] = { 97,0 },			
			[8] = { 27,1 },
			[9] = { -1,0 },
			[10] = { 66,0 },
			[11] = { 86,1 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["8"] = {
		[1885233650] = {
			[1] = { 141,0 },
			[3] = { 38,0 },
			[4] = { 96,0 },
			[5] = { -1,0 },
			[6] = { 56,1 },
			[7] = { 126,0 },			
			[8] = { 71,3 },
			[9] = { -1,0 },
			[10] = { 57,0 },
			[11] = { 249,0 },
			["p0"] = { -1,0 },
			["p1"] = { -1,1 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 141,0 },
			[3] = { 18,0 },
			[4] = { 99,0 },
			[5] = { -1,0 },
			[6] = { 27,0 },
			[7] = { 14,3 },
			[8] = { 77,3 },		
			[9] = { -1,0 },
			[10] = { 65,0 },
			[11] = { 257,0 },		
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["9"] = {
		[1885233650] = {
			[1] = { -1,0 },
			[3] = { 81,0 },
			[4] = { 25,5 },
			[5] = { -1,0 },
			[6] = { 21,9 },
			[7] = { 126,0 },			
			[8] = { 56,1 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 13,0 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { -1,0 },
			[3] = { 85,0 },
			[4] = { 37,5 },
			[5] = { -1,0 },
			[6] = { 10,1 },
			[7] = { 14,3 },		
			[8] = { 27,1 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 27,0 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["10"] = {
		[1885233650] = {
			[1] = { -1,0 },
			[3] = { 4,0 },
			[4] = { 25,5 },
			[5] = { -1,0 },
			[6] = { 21,9 },
			[7] = { 126,0 },			
			[8] = { 31,0 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 31,7 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { -1,0 },
			[3] = { 1,0 },
			[4] = { 37,5 },
			[5] = { -1,0 },
			[6] = { 0,2 },
			[7] = { 14,3 },		
			[8] = { 64,2 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 57,7 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["11"] = {
		[1885233650] = {
			[1] = { -1,0 },
			[3] = { 74,0 },
			[4] = { 3,3 },
			[5] = { -1,0 },
			[6] = { 7,0 },
			[7] = { 126,0 },			
			[8] = { 15,0 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 16,1 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { -1,0 },
			[3] = { 96,0 },
			[4] = { 3,13 },
			[5] = { -1,0 },
			[6] = { 10,1 },
			[7] = { 14,3 },
			[8] = { 15,0 },
			[9] = { -1,0 },
			[10] = { -1,0 },	
			[11] = { 141,1 },		
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["12"] = {
		-- male
		[1885233650] = {
			[1] = { -1,0 },
			[3] = { 26,0 },
			[4] = { 4,0 },
			[5] = { 34,0 },
			[6] = { 24,0 },
			[7] = { -1,0 },			
			[8] = { -1,0 },
			[9] = { -1,0 },
			[10] = { -1,0 },
			[11] = { 234,5 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		-- female
		[-1667301416] = {
			[1] = { -1,0 }, -- máscara
			[3] = { 20,0 }, -- maos
			[4] = { 75,0 }, -- calça
			[5] = { 34,0 }, -- mochila
			[6] = { 24,0 }, -- sapato
			[7] = { -1,0 }, -- acessorios
			[8] = { -1,0 }, -- blusa
			[9] = { -1,0 }, -- colete
			[10] = { -1,0 }, -- adesivo
			[11] = { 86,1 }, -- jaqueta
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["13"] = {
		-- male Bennys
		[1885233650] = {
			[1] = { 0,0 },
			[3] = { 30,0 },
			[4] = { 98,4 },
			[5] = { -1,0 },
			[6] = { 24,0 },
			[7] = { 0,0 },			
			[8] = { 89,0 },
			[9] = { 0,0 },
			[10] = { -1,0 },
			[11] = { 241,0 },
			["p0"] = { 56,4 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		-- female Bennys
		[-1667301416] = {
			[1] = { 0,0 },
			[3] = { 36,0 },
			[4] = { 54,2 },
			[5] = { 0,0 },
			[6] = { 3,4 },
			[7] = { 0,0 },			
			[8] = { 54,0 },
			[9] = { 0,0 },
			[10] = { 0,0 },
			[11] = { 249,0 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["14"] = {
		-- male Sport
		[1885233650] = {
			[1] = { -1,0 },
			[3] = { 0,0 },
			[4] = { 97,3 },
			[5] = { -1,0 },
			[6] = { 70,1 },
			[7] = { 109,0 },			
			[8] = { 90,1 },
			[9] = { 14,0 },
			[10] = { -1,0 },
			[11] = { 241,1 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { 6,1 },
			["p7"] = { -1,0 }
		},
		-- female Sport
		[-1667301416] = {
			[1] = { 0,0 },
			[3] = { 14,0 },
			[4] = { 100,3 },
			[5] = { 30,0 },
			[6] = { 73,1 },
			[7] = { 0,0 },			
			[8] = { 54,0 },
			[9] = { 0,0 },
			[10] = { 0,0 },
			[11] = { 250,4 },
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { 2,0 },
			["p7"] = { -1,0 }
		}
	},
	["143"] = {
		--male TACO
		[1885233650] = {
			[1] = { 163,0 }, -- máscara
			[3] = { 22,0 }, -- maos
			[4] = { 80,2 }, -- calça
			[5] = { 20,0 }, -- mochila
			[6] = { 1,14 }, -- sapato
			[7] = { -1,0 },	-- acessorios		
			[8] = { 16,0 }, -- blusa (camisa)
			[9] = { -1,0 }, -- colete
			[10] = { -1,0 }, -- adesivo
			[11] = { 281,7 }, -- jaqueta
			["p0"] = { -1,0 },
			["p1"] = { -1,0 }, -- oculos
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		--female TACO
		[-1667301416] = {
			[1] = { 163,0 }, -- máscara
			[3] = { 25,0 }, -- maos
			[4] = { 14,9 }, -- calça
			[5] = { 47,0 }, -- mochila
			[6] = { 27,0 }, -- sapato
			[7] = { -1,0 }, -- acessorios
			[8] = { 9,0 }, -- blusa
			[9] = { -1,0 }, -- colete
			[10] = { -1,0 }, -- adesivo
			[11] = { 294,7 }, -- jaqueta
			["p0"] = { 57,0 },
			["p1"] = { 11,7 }, -- oculos
			["p2"] = { -1,0 },
			["p6"] = { 8,0 },
			["p7"] = { -1,0 }
		}
	},
	["144"] = {
		--male Hamburguer
		[1885233650] = {
			[1] = { 164,0 }, -- máscara
            [3] = { 8,0 }, -- maos
            [4] = { 33,0 }, -- calça
            [5] = { -1,0 }, -- mochila
            [6] = { 81,2 }, -- sapato
            [7] = { -1,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 282,0 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { 7,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female Hamburguer
		[-1667301416] = {
			[1] = { 164,0 }, -- máscara
            [3] = { 21,0 }, -- maos
            [4] = { 8,0 }, -- calça
            [5] = { 33,0 }, -- mochila
            [6] = { 81,2 }, -- sapato
            [7] = { -1,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 282,0 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["87"] = {
		--male Gnomo
		[1885233650] = {
			[1] = { 107,2}, -- máscara
            [3] = { 33,0}, -- maos
            [4] = { 83,1 }, -- calça
            [5] = { 20,0 }, -- mochila
            [6] = { 17,0 }, -- sapato
            [7] = { -1,0 },    -- acessorios
            [8] = { -1,0 }, -- blusa (camisa)
            [9] = { -1,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 51,1}, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female Gnomo
		[-1667301416] = {
			[1] = { 107,2}, -- máscara
            [3] = { 21,0}, -- maos
            [4] = { 83,1 }, -- calça
            [5] = { 20,0 }, -- mochila
            [6] = { 17,0 }, -- sapato
            [7] = { -1,0 },    -- acessorios
            [8] = { 16,0 }, -- blusa (camisa)
            [9] = { -1,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 51,1}, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["134"] = {
		--male Vegas
		[1885233650] = {
			[1] = { 154,12 }, -- máscara
            [3] = { 8,0 }, -- maos
            [4] = { 113,12 }, -- calça
            [5] = { 20,0 }, -- mochila
            [6] = { 87,12 }, -- sapato
            [7] = { -1,0 }, -- acessorios
            [8] = { -1,0 }, -- blusa (camisa)
            [9] = { -1,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 287,12 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female Vegas
		[-1667301416] = {
			[1] = { 154,12 }, -- máscara
            [3] = { 8,0 }, -- maos
            [4] = { 113,12 }, -- calça
            [5] = { 20,0 }, -- mochila
            [6] = { 87,12 }, -- sapato
            [7] = { -1,0 }, -- acessorios
            [8] = { 9,0 }, -- blusa (camisa)
            [9] = { -1,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 287,12 }, -- jaqueta
            ["p0"] = { 63,9 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["99"] = {
		--male Rena
		[1885233650] = {
			[1] = { 29,0 }, -- máscara
            [3] = { 79,0 }, -- maos
            [4] = { 19,0 }, -- calça
            [5] = { 0,0 }, -- mochila
            [6] = { 8,0 }, -- sapato
            [7] = { 0,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 196,5 }, -- jaqueta
            ["p0"] = { 24,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female Rena
		[-1667301416] = {
			[1] = { 29,0 }, -- máscara
            [3] = { 79,0 }, -- maos
            [4] = { 19,0 }, -- calça
            [5] = { 0,0 }, -- mochila
            [6] = { 8,0 }, -- sapato
            [7] = { 0,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 196,5 }, -- jaqueta
            ["p0"] = { 24,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["100"] = {
		--male Gorila Branco
		[1885233650] = {
			[1] = { 116,2 }, -- máscara
            [3] = { 4,0 }, -- maos
            [4] = { 64,3 }, -- calça
            [5] = { 0,0 }, -- mochila
            [6] = { 6,2 }, -- sapato
            [7] = { 0,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 279,0 }, -- jaqueta
            ["p0"] = { 0,0 },
            ["p1"] = { 8,3 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female Rena
		[-1667301416] = {
			[1] = { 116,2 }, -- máscara
            [3] = { 4,0 }, -- maos
            [4] = { 64,3 }, -- calça
            [5] = { 0,0 }, -- mochila
            [6] = { 6,2 }, -- sapato
            [7] = { 0,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 279,0 }, -- jaqueta
            ["p0"] = { 24,0 },
            ["p1"] = { 8,3 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["101"] = {
		--male floquinho ueima rosca
		[1885233650] = {
			[1] = { 30,0 }, -- máscara
            [3] = { 79,0 }, -- maos
            [4] = { 58,10 }, -- calça
            [5] = { 46,0 }, -- mochila
            [6] = { 17,0 }, -- sapato
            [7] = { 34,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { -1,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 117,10 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		},
		--female floquinho
		[-1667301416] = {
			[1] = { 116,2 }, -- máscara
            [3] = { 4,0 }, -- maos
            [4] = { 64,3 }, -- calça
            [5] = { 0,0 }, -- mochila
            [6] = { 6,2 }, -- sapato
            [7] = { 0,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 279,0 }, -- jaqueta
            ["p0"] = { 24,0 },
            ["p1"] = { 8,3 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["102"] = {
		--male DY freire vulgo chefinho
		[1885233650] = {
			[1] = { 105,2 }, -- máscara
            [3] = { 11,0 }, -- maos
            [4] = { 24,0 }, -- calça
            [5] = { -1,0 }, -- mochila
            [6] = { 21,0 }, -- sapato
            [7] = { -1,0 },    -- acessorios
            [8] = { 7,0 }, -- blusa (camisa)
            [9] = { -1,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 11,1 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { -1,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { 19,1 },
            ["p7"] = { -1,0 }
		},
		--female floquinho
		[-1667301416] = {
			[1] = { 116,2 }, -- máscara
            [3] = { 4,0 }, -- maos
            [4] = { 64,3 }, -- calça
            [5] = { 0,0 }, -- mochila
            [6] = { 6,2 }, -- sapato
            [7] = { 0,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 279,0 }, -- jaqueta
            ["p0"] = { 24,0 },
            ["p1"] = { 8,3 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["103"] = {
		--male poodle frouxo
		[1885233650] = {
			[1] = { 120,1 }, -- máscara
            [3] = { 4,0 }, -- maos
            [4] = { 28,9 }, -- calça
            [5] = { 20,0 }, -- mochila
            [6] = { 1,15 }, -- sapato
            [7] = { 29,2 },    -- acessorios
            [8] = { 31,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { -1,0 }, -- adesivo
            [11] = { 35,5 }, -- jaqueta
            ["p0"] = { -1,0 },
            ["p1"] = { 17,0 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,1 },
            ["p7"] = { -1,0 }
		},
		--female floquinho
		[-1667301416] = {
			[1] = { 116,2 }, -- máscara
            [3] = { 4,0 }, -- maos
            [4] = { 64,3 }, -- calça
            [5] = { 0,0 }, -- mochila
            [6] = { 6,2 }, -- sapato
            [7] = { 0,0 },    -- acessorios
            [8] = { 15,0 }, -- blusa (camisa)
            [9] = { 0,0 }, -- colete
            [10] = { 0,0 }, -- adesivo
            [11] = { 279,0 }, -- jaqueta
            ["p0"] = { 24,0 },
            ["p1"] = { 8,3 }, -- oculos
            ["p2"] = { -1,0 },
            ["p6"] = { -1,0 },
            ["p7"] = { -1,0 }
		}
	},
	["officer1"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 4,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 143,8 },		
			["p0"] = { 46,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,1 }, -- jaqueta (ok) baixo-> 1, lieut->2, captain->3, commander->4, deputychief->5, assistantchief->6, chief->7
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["officer2"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 4,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 143,8 },		
			["p0"] = { 46,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,1 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["officer3"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 4,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 143,0 },		
			["p0"] = { 46,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,1 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["sargeant"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 30,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 149,1 },		
			["p0"] = { 46,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,1 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["lieutenant"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 30,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 149,2 },		
			["p0"] = { 1,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,2 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["captain"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 30,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 149,3 },		
			["p0"] = { 1,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,3 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["commander"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 30,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 149,0 },		
			["p0"] = { 1,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,4 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["deputychief"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 30,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 149,5 },		
			["p0"] = { 1,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,5 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["assistantchief"] = {
		[1885233650] = {
			[1] = { 121,0 },
			[3] = { 30,0 },
			[4] = { 35,0 },
			[5] = { -1,0 },
			[6] = { 21,0 },
			[7] = { 8,0 },
			[8] = { 38,0 },
			[9] = { 13,0 },
			[10] = { -1,0 },
			[11] = { 149,6 },		
			["p0"] = { 1,0 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)-
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,6 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["chiefacao"] = {
		[1885233650] = {
			[1] = { 35,0 },
			[3] = { 96,0 },
			[4] = { 34,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 119,0 },
			[8] = { 16,0 },
			[9] = { 7,4 },
			[10] = { -1,0 },
			[11] = { 111,3 },		
			["p0"] = { 106,20 },
			["p1"] = { 5,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 121,0 }, -- mascara (ok)
			[3] = { 14,0 }, -- maos (ok)
			[4] = { 34,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 55,0 }, --sapatos (ok)
			[7] = { -1,0 }, --acessorios (ok)		
			[8] = { 27,0 }, --blusa (ok)
			[9] = { 14,0 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 146,2 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["acao"] = {
		[1885233650] = {
			[1] = { 28,0 },
			[3] = { 96,0 },
			[4] = { 34,0 },
			[5] = { -1,0 },
			[6] = { 25,0 },
			[7] = { 119,0 },
			[8] = { 16,0 },
			[9] = { 7,1 },
			[10] = { -1,0 },
			[11] = { 111,3 },		
			["p0"] = { -1,0 },
			["p1"] = { -1,0 },
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 89,0 }, -- mascara (ok)
			[3] = { 36,0 }, -- maos (ok)
			[4] = { 33,0 }, --calca (ok)
			[5] = { 30,0 }, -- mochila (ok)
			[6] = { 25,0 }, --sapatos (ok)
			[7] = { 8,0 }, --acessorios (ok)		
			[8] = { 9,0 }, --blusa (ok)
			[9] = { 7,1 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 103,3 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { -1,0 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 },
			["p7"] = { -1,0 }
		}
	},
	["an"] = {
		[1885233650] = {
			[1] = { 0,0 }, -- mascara (ok)
			[3] = { 19,0 }, -- maos (ok)
			[4] = { 26,0 }, --calca (ok)
			[5] = { 0,0 }, -- mochila (ok)
			[6] = { 25,0 }, --sapatos (ok)
			[7] = { 8,0 }, --acessorios (ok)		
			[8] = { 55,0 }, --blusa (ok)
			[9] = { 7,2 }, -- colete (ok)
			[10] = { 0,0 }, -- adesivo (ok)
			[11] = { 93,0 }, -- jaqueta (ok)
			["p0"] = { 106,20 }, -- chapeu (ok)
			["p1"] = { 5,0 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 }, -- brinco
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 0,0 }, -- mascara (ok)
			[3] = { 31,0 }, -- maos (ok)
			[4] = { 31,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 25,0 }, --sapatos (ok)
			[7] = { 0,0 }, --acessorios (ok)		
			[8] = { 9,3 }, --blusa (ok)
			[9] = { 7,2 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 84,0 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { 0,0 },
			["p6"] = { 7,1 }, -- brinco
			["p7"] = { 7,0 }
		}
	},
	["chief"] = {
		[1885233650] = {
			[1] = { 0,0 }, -- mascara (ok)
			[3] = { 19,0 }, -- maos (ok)
			[4] = { 31,0 }, --calca (ok)
			[5] = { 0,0 }, -- mochila (ok)
			[6] = { 25,0 }, --sapatos (ok)
			[7] = { 8,0 }, --acessorios (ok)		
			[8] = { 55,0 }, --blusa (ok)
			[9] = { 7,2 }, -- colete (ok)
			[10] = { 0,0 }, -- adesivo (ok)
			[11] = { 93,0 }, -- jaqueta (ok)
			["p0"] = { 106,20 }, -- chapeu (ok)
			["p1"] = { 5,0 }, -- oculos (ok)
			["p2"] = { -1,0 },
			["p6"] = { -1,0 }, -- brinco
			["p7"] = { -1,0 }
		},
		[-1667301416] = {
			[1] = { 0,0 }, -- mascara (ok)
			[3] = { 31,0 }, -- maos (ok)
			[4] = { 31,0 }, --calca (ok)
			[5] = { -1,0 }, -- mochila (ok)
			[6] = { 25,0 }, --sapatos (ok)
			[7] = { 0,0 }, --acessorios (ok)		
			[8] = { 9,3 }, --blusa (ok)
			[9] = { 7,2 }, -- colete (ok)
			[10] = { -1,0 }, -- adesivo (ok)
			[11] = { 84,0 }, -- jaqueta (ok)
			["p0"] = { -1,0 }, -- chapeu (ok)
			["p1"] = { 11,3 }, -- oculos (ok)
			["p2"] = { 0,0 },
			["p6"] = { 7,1 }, -- brinco
			["p7"] = { 7,0 }
		}
	},

}

RegisterCommand('preset',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"paramedico.permissao") or vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao")  or vRP.hasPermission(user_id,"mecanico.permissao") or vRP.hasPermission(user_id,"special.permissao") then
		if args[1] then
			local custom = presets[tostring(args[1])]
			if custom then
				local old_custom = vRPclient.getCustomization(source)
				local idle_copy = {}

				idle_copy = vRP.save_idle_custom(source,old_custom)
				idle_copy.modelhash = nil

				for l,w in pairs(custom[old_custom.modelhash]) do
					idle_copy[l] = w
				end
				vRPclient._setCustomization(source,idle_copy)
			end
		else
			vRP.removeCloak(source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PORTE DE ARMAS ADICIONAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('addporte',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)

	if vRP.hasPermission(user_id,"comando.permissao") then
		local id2 = vRP.prompt(source,"Passaporte:","")
		local tipo = vRP.prompt(source,"Tipo de porte:","")
		
		if id2 == "" or tipo == "" then
			return
		end
		tipo = string.lower(tipo)
		id2 = parseInt(id2)
		
		local value = vRP.getUData(id2,"vRP:porte")
        local porte = json.decode(value) or ""
		if porte == "Retirado" then
			TriggerClientEvent("Notify",source,"negado","Não é possível adicionar porte para uma Pessoa com ficha suja!")
		else
			if tipo == "leve" then
				vRP.setUData(id2,"vRP:porte",json.encode("Leve"))
				TriggerClientEvent("Notify",source,"importante","Você concedeu o porte <b>Leve</b> ao Passaporte: "..id2.."")
			elseif tipo == "medio" or tipo == "médio" then
				vRP.setUData(id2,"vRP:porte",json.encode("Medio"))
				TriggerClientEvent("Notify",source,"importante","Você concedeu o porte <b>Médio</b> ao Passaporte: "..id2.."")
			elseif tipo == "especial" then
				vRP.setUData(id2,"vRP:porte",json.encode("Especial"))
				TriggerClientEvent("Notify",source,"importante","Você concedeu o porte <b>Especial</b> ao Passaporte: "..id2.."")
			else
				TriggerClientEvent("Notify",source,"negado","Tipo incorreto de porte, disponiveis: <b>leve</b> ou <b>medio</b>")
			end
		end
	else
		TriggerClientEvent("Notify",source,"negado","Você não é um Chefe de Policia")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PORTE DE ARMAS LIMPAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('limparficha',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	
    local id2 = vRP.prompt(source,"Passaporte:","")
    if id2 == "" then
		return
    end
	
	local pidentity = vRP.getUserIdentity(id2)
    id2 = parseInt(id2)

    if vRP.hasPermission(user_id,"juiz.permissao") or vRP.hasPermission(user_id,"admin.permissao") then
        vRP.setUData(id2,"vRP:porte",json.encode(""))
		SendWebhookMessage(weebhookficha,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[LIMPOU A FICHA]: "..id2.." "..pidentity.name.." "..pidentity.firstname..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
        TriggerClientEvent("Notify",source,"importante","Porte removido com sucesso do Passaporte: "..id2.."")
	else
		TriggerClientEvent("Notify",source,"negado","Você não é um Policial")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PORTE DE ARMAS VERIFICAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('porte',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)

    if vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"admin.permissao") then
        local id2 = vRP.prompt(source,"Passaporte:","")
        if id2 == "" then
		    return
        end
        id2 = parseInt(id2)

        local value = vRP.getUData(id2,"vRP:porte")
        local porte = json.decode(value) or ""
		
        if porte == "Leve" then
            TriggerClientEvent("Notify",source,"importante","O cidadão possui Porte <b>Leve</b>")
        elseif porte == "Medio" then
            TriggerClientEvent("Notify",source,"importante","O cidadão possui Porte <b>Médio</b>")
		elseif porte == "Especial" then
            TriggerClientEvent("Notify",source,"importante","O cidadão possui Porte <b>Especial</b>")
		elseif porte == "Retirado" then
            TriggerClientEvent("Notify",source,"importante","O cidadão teve seu porte <b>Retirado</b> ao ser preso")
        else
            TriggerClientEvent("Notify",source,"negado","O cidadão não possui Porte de Armas")
        end
	else
		local value = vRP.getUData(user_id,"vRP:porte")
        local porte = json.decode(value) or ""
        if porte == "Leve" then
            TriggerClientEvent("Notify",source,"importante","Você possui Porte <b>Leve</b>")
        elseif porte == "Medio" then
            TriggerClientEvent("Notify",source,"importante","Você possui Porte <b>Médio</b>")
		elseif porte == "Especial" then
            TriggerClientEvent("Notify",source,"importante","Você possui Porte <b>Especial</b>")
		elseif porte == "Retirado" then
            TriggerClientEvent("Notify",source,"importante","Você teve seu porte <b>Retirado</b> ao ser preso")
        else
            TriggerClientEvent("Notify",source,"negado","Você não possui Porte de Armas")
        end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARSENAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('a',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
    if user_id then
		if args[1] == "taser" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_STUNGUN"] = { ammo = 0 }})		
		elseif args[1] == "cassetete" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_NIGHTSTICK"] = { ammo = 0 }})
		elseif args[1] == "lanterna" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_FLASHLIGHT"] = { ammo = 0 }})
		elseif args[1] == "extintor" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_FIREEXTINGUISHER"] = { ammo = 0 }})
		elseif args[1] == "m1911" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_PISTOL"] = { ammo = 100 }})
			TriggerClientEvent("Notify",source,"importante","Você comprou <b>1x Pistola</b> por <b>$60.000 dólares</b>, do porte legal de armas.")
		elseif args[1] == "glock" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_COMBATPISTOL"] = { ammo = 100 }})
		elseif args[1] == "magnum357" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_REVOLVER_MK2"] = { ammo = 100 }})
		elseif args[1] == "magnum44" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_REVOLVER"] = { ammo = 100 }})		
		elseif args[1] == "mp5" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_SMG"] = { ammo = 200 }})
		elseif args[1] == "sigsauer" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_COMBATPDW"] = { ammo = 200 }})
		elseif args[1] == "remington" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_PUMPSHOTGUN_MK2"] = { ammo = 30 }})
		elseif args[1] == "m4a1" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_CARBINERIFLE"] = { ammo = 200 }})
		elseif args[1] == "uzi" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_MICROSMG"] = { ammo = 200 }})
		elseif args[1] == "mtar" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_ASSAULTSMG"] = { ammo = 200 }})
		elseif args[1] == "musket" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_MUSKET"] = { ammo = 60 }})
		elseif args[1] == "ak103" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_ASSAULTRIFLE"] = { ammo = 200 }})
		elseif args[1] == "aks" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_COMPACTRIFLE"] = { ammo = 200 }})
		elseif args[1] == "rpg" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_RPG"] = { ammo = 1 }})
		elseif args[1] == "sniper" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_HEAVYSNIPER_MK2"] = { ammo = 50 }})
		elseif args[1] == "bn" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_SNOWBALL"] = { ammo = 250 }})	
		elseif args[1] == "fodeu" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_STICKYBOMB"] = { ammo = 20 }})	
		elseif args[1] == "gas" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["WEAPON_BZGAS"] = { ammo = 1 }})	
		elseif args[1] == "mk2" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(source,{["SPECIALCARBINE_MK2"] = { ammo = 250 }})	
		elseif args[1] == "colete" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.setArmour(source,100)
		elseif args[1] == "limpar" and (vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"paisanapolicia.permissao")) then
			vRPclient.giveWeapons(source,{},true)
			vRPclient.setArmour(source,0)
		elseif vRP.hasPermission(user_id,"polpar.permissao") then
			TriggerClientEvent("Notify",source,"negado","Armamento não encontrado.")
			return
		end
		SendWebhookMessage(webhookarsenal,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[RETIROU]: "..(args[1]).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	end
end)

RegisterCommand('a2',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local nplayer = vRP.getUserSource(parseInt(args[2]))
	local nuser_id = parseInt(args[2])
    if nuser_id then
		if args[1] == "taser" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_STUNGUN"] = { ammo = 0 }})			
		elseif args[1] == "cassetete" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_NIGHTSTICK"] = { ammo = 0 }})
		elseif args[1] == "lanterna" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_FLASHLIGHT"] = { ammo = 0 }})
		elseif args[1] == "extintor" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_FIREEXTINGUISHER"] = { ammo = 0 }})
		elseif args[1] == "m1911" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_PISTOL"] = { ammo = 100 }})
			TriggerClientEvent("Notify",source,"importante","Você comprou <b>1x Pistola</b> por <b>$60.000 dólares</b>, do porte legal de armas.")
		elseif args[1] == "glock" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_COMBATPISTOL"] = { ammo = 100 }})
		elseif args[1] == "magnum357" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_REVOLVER_MK2"] = { ammo = 100 }})
		elseif args[1] == "magnum44" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_REVOLVER"] = { ammo = 100 }})		
		elseif args[1] == "mp5" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_SMG"] = { ammo = 200 }})
		elseif args[1] == "sigsauer" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_COMBATPDW"] = { ammo = 200 }})
		elseif args[1] == "remington" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_PUMPSHOTGUN_MK2"] = { ammo = 30 }})
		elseif args[1] == "m4a1" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_CARBINERIFLE"] = { ammo = 200 }})
		elseif args[1] == "m16" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_SPECIALCARBINE_MK2"] = { ammo = 200 }})	
		elseif args[1] == "uzi" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_MICROSMG"] = { ammo = 200 }})
		elseif args[1] == "mtar" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_ASSAULTSMG"] = { ammo = 200 }})
		elseif args[1] == "musket" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_MUSKET"] = { ammo = 60 }})
		elseif args[1] == "ak103" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_ASSAULTRIFLE"] = { ammo = 200 }})
		elseif args[1] == "aks" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_COMPACTRIFLE"] = { ammo = 200 }})
		elseif args[1] == "sniper" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_HEAVYSNIPER_MK2"] = { ammo = 50 }})
		elseif args[1] == "rpg" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_RPG"] = { ammo = 1 }})
		elseif args[1] == "gas" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_BZGAS"] = { ammo = 1 }})
		elseif args[1] == "fire" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.giveWeapons(nplayer,{["WEAPON_FIREWORK"] = { ammo = 1 }})			
		elseif args[1] == "colete" and vRP.hasPermission(user_id,"admin.permissao") then
			vRPclient.setArmour(nplayer,100)
		elseif args[1] == "limpar" and (vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"paisanapolicia.permissao")) then
			vRPclient.giveWeapons(nplayer,{},true)
			vRPclient.setArmour(nplayer,0)
			TriggerClientEvent("Notify",source,"negado","ID: <b>"..nuser_id.."</b> Teve as armas limpas")
			TriggerClientEvent("Notify",nplayer,"importante","Suas armas foram limpas pelo ID: "..user_id.."<br><b>Nome:  "..identity.name.." "..identity.firstname.."</b>")
		elseif vRP.hasPermission(user_id,"polpar.permissao") then
			TriggerClientEvent("Notify",source,"negado","Armamento não encontrado.")
			return
		end
		SendWebhookMessage(webhookarsenal,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[DEU A ARMA]: "..(args[1]).."\nPara: "..nuser_id..""..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
	else
		TriggerClientEvent("Notify",source,"negado","Nenhum jogador com este ID")
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ARSENAL INVENRTARIO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('arma',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local nuser_id = parseInt(args[2])
	local nplayer = vRP.getUserSource(nuser_id)
    if user_id then
		if args[1] == "paraquedas" and vRP.hasPermission(user_id,"admin.permissao") then
			if nuser_id > 0 then
				vRP.giveInventoryItem(nuser_id,"wbody|GADGET_PARACHUTE",1)
			else
				vRP.giveInventoryItem(user_id,"wbody|GADGET_PARACHUTE",1)
			end
		elseif args[1] == "magnum44" and vRP.hasPermission(user_id,"admin.permissao") then
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_REVOLVER",1)
			vRP.giveInventoryItem(user_id,"wammo|WEAPON_REVOLVER",100)
		elseif args[1] == "five" and vRP.hasPermission(user_id,"admin.permissao") then
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_PISTOL_MK2",1)
			vRP.giveInventoryItem(user_id,"wammo|WEAPON_PISTOL_MK2",100)
		elseif args[1] == "glock" and vRP.hasPermission(user_id,"admin.permissao") then
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_COMBATPISTOL",1)
			vRP.giveInventoryItem(user_id,"wammo|WEAPON_COMBATPISTOL",100)
		elseif args[1] == "mp5" and vRP.hasPermission(user_id,"admin.permissao") then
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_SMG",1)
			vRP.giveInventoryItem(user_id,"wammo|WEAPON_SMG",100)
		elseif args[1] == "uzi" and vRP.hasPermission(user_id,"admin.permissao") then
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_MICROSMG",1)
			vRP.giveInventoryItem(user_id,"wammo|WEAPON_MICROSMG",100)
		elseif args[1] == "mtar" and vRP.hasPermission(user_id,"admin.permissao") then
			vRP.giveInventoryItem(user_id,"wbody|WEAPON_ASSAULTSMG",1)
			vRP.giveInventoryItem(user_id,"wammo|WEAPON_ASSAULTSMG",100)
		elseif args[1] == "gasolina" and vRP.hasPermission(user_id,"admin.permissao") then
			if nuser_id > 0 then
				vRPclient.giveWeapons(nplayer,{["WEAPON_PETROLCAN"] = { ammo = 5000 }}) --equipado
				--vRP.giveInventoryItem(nuser_id,"wbody|WEAPON_PETROLCAN",1)            --invantario
				--vRP.giveInventoryItem(nuser_id,"wammo|WEAPON_PETROLCAN",5000)         --invantario
			else
				vRPclient.giveWeapons(source,{["WEAPON_PETROLCAN"] = { ammo = 5000 }})  --equipado
				--vRP.giveInventoryItem(user_id,"wbody|WEAPON_PETROLCAN",1)             --invantario
				--vRP.giveInventoryItem(user_id,"wammo|WEAPON_PETROLCAN",5000)          --invantario
			end
		elseif vRP.hasPermission(user_id,"admin.permissao") then
			TriggerClientEvent("Notify",source,"negado","Armamento não encontrado.")
		end
	end
end)

RegisterCommand('weapon',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") then
		if args[1] == nil then
			return
		else
			vRP.giveInventoryItem(user_id,"wbody|"..string.upper(args[1]),1)
			vRP.giveInventoryItem(user_id,"wammo|"..string.upper(args[1]),200)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- AVISO STAFF
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('aviso',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"mod.permissao") then
		local id2 = vRP.prompt(source,"Passaporte:","")
		local msg = vRP.prompt(source,"Mensagem: ","")
		if id2 == "" or msg == "" then
			return
		end
		id2 = parseInt(id2)
		local nplayer = vRP.getUserSource(id2)
		local identity = vRP.getUserIdentity(id2)
		if nplayer then
			TriggerClientEvent("Notify",nplayer,"negado","<b>Você recebeu uma mensagem, verifique o chat</b>")
			TriggerClientEvent('chatMessage',nplayer,"ADM",{255,0,0},"^7Mensagem: ^5"..msg.."")
			vRPclient.playSound(nplayer,"Event_Message_Purple","GTAO_FM_Events_Soundset")
			TriggerClientEvent("Notify",source,"importante","Aviso enviado para <b>"..identity.name.." "..identity.firstname.." </b>")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DINHEIRO SUJO
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterServerEvent("dinheirosujo")
AddEventHandler("dinheirosujo",function()
	local verify = 0
	local source = source
    local user_id = vRP.getUserId(source)
	local data = vRP.getUserDataTable(user_id)
    if vRP.hasPermission(user_id,"policia.permissao") then
		if data and data.inventory then
			for k,v in pairs(data.inventory) do
				if vRP.itemIndexList(k) == "dinheirosujo" then
					local quantidade = parseInt(v.amount)
					TriggerClientEvent('cancelando',source,true)
					vRPclient._playAnim(source,false,{{"amb@prop_human_parking_meter@female@idle_a","idle_a_female"}},true)
					TriggerClientEvent("progress",source,60000,"analisando")
					verify = 1
					SetTimeout(60000,function()
						if quantidade > 20000 then
							TriggerClientEvent("Notify",source,"importante","O dinheiro é <b>ILÍCITO</b>")
							if vRP.tryGetInventoryItem(user_id,"dinheirosujo",quantidade) then
								vRP.giveInventoryItem(user_id,"dinheirosujo2",quantidade)
							end
						else
							porc = math.random(1,100)
							if porc > 90 then
								TriggerClientEvent("Notify",source,"sucesso","O dinheiro é <b>LEGALIZADO</b>, faça a devolução ao cidadão!")
							else
								TriggerClientEvent("Notify",source,"importante","O dinheiro é <b>ILÍCITO</b>")
								if vRP.tryGetInventoryItem(user_id,"dinheirosujo",quantidade) then
									vRP.giveInventoryItem(user_id,"dinheirosujo2",quantidade)
								end
							end
						end
						TriggerClientEvent('cancelando',source,false)
						vRPclient._stopAnim(source,false)
					end)
				end
			end
			if verify == 0 then
				TriggerClientEvent("Notify",source,"negado","Você não possui Dinheiro para Analisar!")
			end
		else
			TriggerClientEvent("Notify",source,"negado","Inventario Vazio!")
		end
	else
        TriggerClientEvent("Notify",source,"negado","Você não é um Policial!")
    end
end)
local webhooksuspeito= "https://discordapp.com/api/webhooks/681143336337276963/r81bat87EGO8ilsN-aWAlsVauq1Ti3DEKl_QBwwr1sA7ECFotXQRA7n5zcyal1gFgJwN"

function SendWebhookMessage(webhook,message)
    if webhook ~= nil and webhook ~= "" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

RegisterServerEvent('LOG:ARMAS')
AddEventHandler('LOG:ARMAS', function()
    local user_id = vRP.getUserId(source)
    if user_id~=nil then
        SendWebhookMessage(webhooksuspeito, "[SUSPEITO] SPAWN DE ARMAS "..user_id)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------