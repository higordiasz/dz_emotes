--------------------------------------------------------------------------------
-- CARREGAR
--------------------------------------------------------------------------------
local carryingBackInProgress = false
local stoped = false

dz_animacoes_single = {
	["1"] = {
		lib = "anim@peace_selfie",
		anim = "peace_clip",
		mov = false,
		loop = true
	},
	["2"] = {
		lib = "anim@stance_folded_arms",
		anim = "folded_arms_clip",
		mov = false,
		loop = true
	},
	["3"] = {
		lib = "anim@stance_kneeling_cute",
		anim = "kneeling_cute_clip",
		mov = false,
		loop = true
	},
	["4"] = {
		lib = "anim@sit_cute_window",
		anim = "cute_window_clip",
		mov = false,
		loop = true
	},
	["5"] = {
		lib = "anim@car_cute_sit",
		anim = "cute_sit_clip",
		mov = false,
		loop = true
	},
	["6"] = {
		lib = "anim@selfie_peacesign_cute",
		anim = "peacesign_cute_clip",
		mov = false,
		loop = true
	},
	["7"] = {
		lib = "pose5@seimen",
		anim = "pose5_clip",
		mov = false,
		loop = true
	},
	["8"] = {
		lib = "pose6@seimen",
		anim = "pose6_clip",
		mov = false,
		loop = true
	},
	["9"] = {
		lib = "pose7@seimen",
		anim = "pose7_clip",
		mov = false,
		loop = true
	},
	["10"] = {
		lib = "pose8@seimen",
		anim = "pose8_clip",
		mov = false,
		loop = true
	},
	["11"] = {
		lib = "pose9@seimen",
		anim = "pose9_clip",
		mov = false,
		loop = true
	},
	["12"] = {
		lib = "arron@simspose1",
		anim = "simspose1",
		mov = false,
		loop = true
	},
	["13"] = {
		lib = "arron@simspose2",
		anim = "simspose2",
		mov = false,
		loop = true
	},
	["14"] = {
		lib = "arron@simspose3",
		anim = "simspose3",
		mov = false,
		loop = true
	},
	["15"] = {
		lib = "arron@simspose4",
		anim = "simspose4",
		mov = false,
		loop = true
	},
	["16"] = {
		lib = "arron@simspose5",
		anim = "simspose5",
		mov = false,
		loop = true
	},
	["17"] = {
		lib = "lunyx@minipack@v1@pose001",
		anim = "minipack@v1@pose001",
		mov = false,
		loop = true
	},
	["18"] = {
		lib = "lunyx@minipack@v1@pose002",
		anim = "minipack@v1@pose002",
		mov = false,
		loop = true
	},
	["19"] = {
		lib = "lunyx@minipack@v1@pose003",
		anim = "minipack@v1@pose003",
		mov = false,
		loop = true
	},
	["20"] = {
		lib = "lunyx@minipack@v1@pose004",
		anim = "minipack@v1@pose004",
		mov = false,
		loop = true
	},
	["21"] = {
		lib = "lunyx@minipack@v1@pose005",
		anim = "minipack@v1@pose005",
		mov = false,
		loop = true
	},
	["22"] = {
		lib = "lunyx@random@v3@pose001",
		anim = "random@v3@pose001",
		mov = false,
		loop = true
	},
	["23"] = {
		lib = "lunyx@random@v3@pose002",
		anim = "random@v3@pose002",
		mov = false,
		loop = true
	},
	["24"] = {
		lib = "lunyx@random@v3@pose003",
		anim = "random@v3@pose003",
		mov = false,
		loop = true
	},
	["25"] = {
		lib = "lunyx@random@v3@pose004",
		anim = "random@v3@pose004",
		mov = false,
		loop = true
	},
	["26"] = {
		lib = "lunyx@random@v3@pose005",
		anim = "random@v3@pose005",
		mov = false,
		loop = true
	},
	["27"] = {
		lib = "lunyx@random@v3@pose006",
		anim = "random@v3@pose006",
		mov = false,
		loop = true
	},
	["28"] = {
		lib = "lunyx@random@v3@pose007",
		anim = "random@v3@pose007",
		mov = false,
		loop = true
	},
	["29"] = {
		lib = "lunyx@random@v3@pose008",
		anim = "random@v3@pose008",
		mov = false,
		loop = true
	},
	["30"] = {
		lib = "lunyx@random@v3@pose009",
		anim = "random@v3@pose009",
		mov = false,
		loop = true
	},
	["31"] = {
		lib = "lunyx@random@v3@pose010",
		anim = "random@v3@pose010",
		mov = false,
		loop = true
	},
	["32"] = {
		lib = "lunyx@random@v3@pose011",
		anim = "random@v3@pose011",
		mov = false,
		loop = true
	},
	["33"] = {
		lib = "lunyx@random@v3@pose012",
		anim = "random@v3@pose012",
		mov = false,
		loop = true
	},
	["34"] = {
		lib = "lunyx@random@v3@pose013",
		anim = "random@v3@pose013",
		mov = false,
		loop = true
	},
	["35"] = {
		lib = "lunyx@random@v3@pose014",
		anim = "random@v3@pose014",
		mov = false,
		loop = true
	},
	["36"] = {
		lib = "lunyx@random@v3@pose015",
		anim = "random@v3@pose015",
		mov = false,
		loop = true
	},
	["37"] = {
		lib = "lunyx@random@v3@pose016",
		anim = "random@v3@pose016",
		mov = false,
		loop = true
	},
	["38"] = {
		lib = "lunyx@random@v3@pose017",
		anim = "random@v3@pose017",
		mov = false,
		loop = true
	},
	["39"] = {
		lib = "lunyx@random@v3@pose018",
		anim = "random@v3@pose018",
		mov = false,
		loop = true
	},
	["40"] = {
		lib = "lunyx@random@v3@pose019",
		anim = "random@v3@pose019",
		mov = false,
		loop = true
	},
	["41"] = {
		lib = "lunyx@random@v3@pose020",
		anim = "random@v3@pose020",
		mov = false,
		loop = true
	},
	["42"] = {
		lib = "anim@female_smoke_01",
		anim = "f_smoke_01_clip",
		mov = false,
		loop = true
	},
	["43"] = {
		lib = "anim@female_lean_01",
		anim = "f_lean_01_clip",
		mov = false,
		loop = true
	},
	["44"] = {
		lib = "anim@female_selfie_1st_01",
		anim = "f_selfie_1st_01_clip",
		mov = false,
		loop = true
	},
	["45"] = {
		lib = "anim@female_model_01",
		anim = "f_model_01_clip",
		mov = false,
		loop = true
	},
	["46"] = {
		lib = "anim@female_model_02",
		anim = "f_model_02_clip",
		mov = false,
		loop = true
	},
	["47"] = {
		lib = "anim@female_model_03",
		anim = "f_model_03_clip",
		mov = false,
		loop = true
	},
	["48"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["49"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["50"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["51"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["52"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["53"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["54"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["55"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["56"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["57"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["58"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["59"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	},
	["60"] = {
		lib = "",
		anim = "",
		mov = false,
		loop = true
	}
}

dz_animacoes = {
	["1"] = {
		lib = 'mx@piggypack_a',
		anim1 = 'mxclip_a',
		lib2 = 'mx@piggypack_b',
		anim2 = 'mxanim_b',
		distans = -0.4,
		distans2 = 0.0,
		height = 0.25,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 49,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["2"] = {
		lib = 'mx@couplephone_m',
		anim1 = 'mx@couplephone_m_clip',
		lib2 = 'mx@couplephone_f',
		anim2 = 'mx@couplephone_f_clip',
		distans = 0.28,
		distans2 = 0.0,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false
	},
	["3"] = {
		lib = 'mx@couple1_a',
		anim1 = 'mx@couple1_a_clip',
		lib2 = 'mx@couple1_b',
		anim2 = 'mx@couple1_b_clip',
		distans = 0.17,
		distans2 = -0.33,
		height = 0.0,
		spin = 280.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["4"] = {
		lib = 'mx@couple2_a',
		anim1 = 'mx@couple2_clip',
		lib2 = 'mx@couple2_b',
		anim2 = 'mx@couple2b_clip',
		distans = 0.37,
		distans2 = -0.17,
		height = 0.0,
		spin = 180.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["5"] = {
		lib = 'mx@couple3_a',
		anim1 = 'mx@couple3_a_clip',
		lib2 = 'mx@couple3_b',
		anim2 = 'mx@couple3_b_clip',
		distans = 0.0,
		distans2 = 0.0,
		height = 0.73,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["6"] = {
		lib = 'mx@couple6_a',
		anim1 = 'mx@couple1_a_clip',
		lib2 = 'mx@couple6_b',
		anim2 = 'mx@couple1_b_clip',
		distans = 0.5,
		distans2 = 0.0,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["7"] = {
		lib = 'mx@couple7_a',
		anim1 = 'mx@couple2_a_clip',
		lib2 = 'mx@couple7_b',
		anim2 = 'mx@couple2_b_clip',
		distans = 0.6,
		distans2 = 0.0,
		height = -0.07,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["8"] = {
		lib = 'mx@couple8_a',
		anim1 = 'mx@couple3_a_clip',
		lib2 = 'mx@couple8_b',
		anim2 = 'mx@couple3_b_clip',
		distans = 0.7,
		distans2 = 0.0,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["9"] = {
		lib = 'mx@couple4_a',
		anim1 = 'mx@couple4_a_clip',
		lib2 = 'mx@couple4_b',
		anim2 = 'mx@couple4_b_clip',
		distans = 0.1,
		distans2 = 0.0,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["10"] = {
		lib = 'mx@couple5_a',
		anim1 = 'mx@couple5_a_clip',
		lib2 = 'mx@couple5_b',
		anim2 = 'mx@couple5_b_clip',
		distans = 0.8,
		distans2 = 0.0,
		height = 0.9,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["11"] = {
		lib = 'bfflookback1@animation',
		anim1 = 'bfflookback1_clip',
		lib2 = 'bfflookback2@animation',
		anim2 = 'bfflookback2_clip',
		distans = 0.12,
		distans2 = 0.92,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["12"] = {
		lib = 'bffcasualpose1@animation',
		anim1 = 'bffcasualpose1_clip',
		lib2 = 'bffcasualpose2@animation',
		anim2 = 'bffcasualpose2_clip',
		distans = 0.05,
		distans2 = 0.45,
		height = 0.0,
		spin = 90.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["13"] = {
		lib = 'bfffun1@animation',
		anim1 = 'bfffun1_clip',
		lib2 = 'bfffun2@animation',
		anim2 = 'bfffun2_clip',
		distans = -0.6,
		distans2 = 0.15,
		height = 0.25,
		spin = 190.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["14"] = {
		lib = 'bffhandhold1@animation',
		anim1 = 'bffhandhold1_clip',
		lib2 = 'bffhandhold2@animation',
		anim2 = 'bffhandhold2_clip',
		distans = 0.5,
		distans2 = -0.32,
		height = 0.01,
		spin = -30.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["15"] = {
		lib = 'chouko@bewithmem1',
		anim1 = 'bewithmem1',
		lib2 = 'chouko@bewithmef1',
		anim2 = 'bewithmef1',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["16"] = {
		lib = 'dollie_mods@follow_me_001',
		anim1 = 'follow_me_001',
		lib2 = 'dollie_mods@follow_me_002',
		anim2 = 'follow_me_002',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["17"] = {
		lib = 'holdhip@animation',
		anim1 = 'holdhip_clip',
		lib2 = 'holdhipb@animation',
		anim2 = 'holdhipb_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["18"] = {
		lib = 'holdass@animation',
		anim1 = 'holdass_clip',
		lib2 = 'holdassb@animation',
		anim2 = 'holdassb_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["19"] = {
		lib = 'coupleseat1@animation',
		anim1 = 'coupleseat1_clip',
		lib2 = 'coupleseat1b@animation',
		anim2 = 'coupleseat1b_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["20"] = {
		lib = 'mx@pack4.1_a',
		anim1 = 'mx@pack4.1_a_clip',
		lib2 = 'mx@pack4.1_b',
		anim2 = 'mx@pack4.1_b_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["21"] = {
		lib = 'mx@couple4.2_a',
		anim1 = 'mx@couple4.2_a_clip',
		lib2 = 'mx@couple4.2_b',
		anim2 = 'mx@couple4.2_b_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["22"] = {
		lib = 'mx@couple4.3_a',
		anim1 = 'mx@couple4.3_a_clip',
		lib2 = 'mx@couple4.3_b',
		anim2 = 'mx@couple4.3_b_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["23"] = {
		lib = 'mx@couple4.4_a',
		anim1 = 'mx@couple4.4_a_clip',
		lib2 = 'mx@couple4.4_b',
		anim2 = 'mx@couple4.4_b_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["24"] = {
		lib = 'mx@couple4.5_a',
		anim1 = 'mx@couple4.5_a_clip',
		lib2 = 'mx@couple4.5_b',
		anim2 = 'mx@couple4.5_b_clip',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	},
	["25"] = {
		lib = '',
		anim1 = '',
		lib2 = '',
		anim2 = '',
		distans = 0.15,
		distans2 = 0.35,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true
	}
}

RegisterCommand("pose", function(source, args)
	local ped = PlayerPedId()
	local nome = args[1]
	if nome and dz_animacoes_single[nome] and not IsPedArmed(ped,6) and not IsPedSwimming(ped) then
		vRP.playAnim(dz_animacoes_single[nome].mov,{dz_animacoes_single[nome].lib,dz_animacoes_single[nome].anim},dz_animacoes_single[nome].loop)
	end
end,false)

RegisterCommand("casal",function(source, args)
	if not carryingBackInProgress then
		local player = PlayerPedId()
		if args and dz_animacoes[args[1]] then
			local closestPlayer = GetClosestPlayer(33)
			target = GetPlayerServerId(closestPlayer)
			if closestPlayer ~= nil then
				carryingBackInProgress = true
				TriggerServerEvent('dz_emotes:sync', closestPlayer, dz_animacoes[args[1]].lib,dz_animacoes[args[1]].lib2, dz_animacoes[args[1]].anim1, dz_animacoes[args[1]].anim2, dz_animacoes[args[1]].distans, dz_animacoes[args[1]].distans2, dz_animacoes[args[1]].height,target,dz_animacoes[args[1]].length,dz_animacoes[args[1]].spin,dz_animacoes[args[1]].controlFlagMe,dz_animacoes[args[1]].controlFlagTarget,dz_animacoes[args[1]].animFlagTarget)
			end
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(GetPlayerPed(-1))
		DetachEntity(GetPlayerPed(-1), true, false)
		local closestPlayer = GetClosestPlayer(33)
		target = GetPlayerServerId(closestPlayer)
		TriggerServerEvent("dz_emotes:stop",target)
	end
end,false)

RegisterNetEvent('dz_emotes:syncTarget')
AddEventHandler('dz_emotes:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = GetPlayerPed(-1)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	carryingBackInProgress = true
	print("triggered dz_emotes:syncTarget")
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(GetPlayerPed(-1), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
end)

RegisterNetEvent('dz_emotes:syncMe')
AddEventHandler('dz_emotes:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
	local playerPed = GetPlayerPed(-1)
	print("triggered dz_emotes:syncMe")
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	Wait(500)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	Citizen.Wait(length)
end)

RegisterNetEvent('dz_emotes:cl_stop')
AddEventHandler('dz_emotes:cl_stop', function()
	carryingBackInProgress = false
	ClearPedSecondaryTask(GetPlayerPed(-1))
	DetachEntity(GetPlayerPed(-1), true, false)
end)

function GetPlayers()
    local players = {}

    for _, player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
	end

    return players
end

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	print("jogador mais próximo é dist: " .. tostring(closestDistance))
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

local piggyBackInProgress = false

RegisterNetEvent('dz_emotes:syncTarget')
AddEventHandler('dz_emotes:syncTarget', function(target, animationLib, animation2, distans, distans2, height, length,spin,controlFlag)
	local playerPed = GetPlayerPed(-1)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	piggyBackInProgress = true
	print("triggered dz_emotes:syncTarget")
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(GetPlayerPed(-1), targetPed, 0, distans2, distans, height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation2, 8.0, -8.0, length, controlFlag, 0, false, false, false)
end)

RegisterNetEvent('dz_emotes:syncMe')
AddEventHandler('dz_emotes:syncMe', function(animationLib, animation,length,controlFlag,animFlag)
	local playerPed = GetPlayerPed(-1)
	print("triggered dz_emotes:syncMe")
	RequestAnimDict(animationLib)

	while not HasAnimDictLoaded(animationLib) do
		Citizen.Wait(10)
	end
	Wait(500)
	if controlFlag == nil then controlFlag = 0 end
	TaskPlayAnim(playerPed, animationLib, animation, 8.0, -8.0, length, controlFlag, 0, false, false, false)
	Citizen.Wait(length)
end)

RegisterNetEvent('dz_emotes:cl_stop')
AddEventHandler('dz_emotes:cl_stop', function()
	piggyBackInProgress = false
	ClearPedSecondaryTask(GetPlayerPed(-1))
	DetachEntity(GetPlayerPed(-1), true, false)
end)

function GetPlayers()
    local players = {}

    for _, player in ipairs(GetActivePlayers()) do
		local ped = GetPlayerPed(player)
	end

    return players
end

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	print("closest player is dist: " .. tostring(closestDistance))
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end


function GetPlayers()
    local players = {}

	for _, i in ipairs(GetActivePlayers()) do
        table.insert(players, i)
    end

    return players
end

function GetClosestPlayer(radius)
    local players = GetPlayers()
    local closestDistance = -1
    local closestPlayer = -1
    local ply = GetPlayerPed(-1)
    local plyCoords = GetEntityCoords(ply, 0)

    for index,value in ipairs(players) do
        local target = GetPlayerPed(value)
        if(target ~= ply) then
            local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
            local distance = GetDistanceBetweenCoords(targetCoords['x'], targetCoords['y'], targetCoords['z'], plyCoords['x'], plyCoords['y'], plyCoords['z'], true)
            if(closestDistance == -1 or closestDistance > distance) then
                closestPlayer = value
                closestDistance = distance
            end
        end
    end
	print("closest player is dist: " .. tostring(closestDistance))
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end



function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    if onScreen then
        SetTextScale(0.19, 0.19)
        SetTextFont(0)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end


function drawNativeNotification(text)
    SetTextComponentFormat('STRING')
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end
