-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPS = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
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
		lib = "jxs1anims@animation",
		anim = "jxs1anims_clip",
		mov = false,
		loop = true
	},
	["49"] = {
		lib = "jxs2anims@animation",
		anim = "jxs2anims_clip",
		mov = false,
		loop = true
	},
	["50"] = {
		lib = "jxs3anims@animation",
		anim = "jxs3anims_clip",
		mov = false,
		loop = true
	},
	["51"] = {
		lib = "jxs4anims@animation",
		anim = "jxs4anims_clip",
		mov = false,
		loop = true
	},
	["52"] = {
		lib = "jxs5anims@animation",
		anim = "jxs5anims_clip",
		mov = false,
		loop = true
	},
	["53"] = {
		lib = "jxs9anims@animation",
		anim = "jxs9anims_clip",
		mov = false,
		loop = true
	},
	["54"] = {
		lib = "jxs10anims@animation",
		anim = "jxs10anims_clip",
		mov = false,
		loop = true
	},
	["55"] = {
		lib = "jxs11anims@animation",
		anim = "jxs11anims_clip",
		mov = false,
		loop = true
	},
	["56"] = {
		lib = "jxs12anims@animation",
		anim = "jxs12anims_clip",
		mov = false,
		loop = true
	},
	["57"] = {
		lib = "jxfxck1anims@animation",
		anim = "jxfxck1anims_clip",
		mov = false,
		loop = true
	},
	["58"] = {
		lib = "jx2moneyanims@animation",
		anim = "jx2moneyanims_clip",
		mov = false,
		loop = true
	},
	["59"] = {
		lib = "jxmill2anims@animation",
		anim = "jxmill2anims_clip",
		mov = false,
		loop = true
	},
	["60"] = {
		lib = "badbitches1@pose",
		anim = "badbitches1_clip",
		mov = false,
		loop = true
	},
	["61"] = {
		lib = "badbitches2@pose",
		anim = "badbitches2_clip",
		mov = false,
		loop = true
	},
	["62"] = {
		lib = "sitting@pose",
		anim = "sitting_clip",
		mov = false,
		loop = true
	},
	["63"] = {
		lib = "layingonground@animation",
		anim = "layingonground_clip",
		mov = false,
		loop = true
	},
	["64"] = {
		lib = "pose@seimen",
		anim = "pose_clip",
		mov = false,
		loop = true
	},
	["65"] = {
		lib = "pose2@seimen",
		anim = "pose2_clip",
		mov = false,
		loop = true
	},
	["66"] = {
		lib = "pose3@seimen",
		anim = "pose3_clip",
		mov = false,
		loop = true
	},
	["67"] = {
		lib = "pose4@seimen",
		anim = "pose4_clip",
		mov = false,
		loop = true
	},
	["68"] = {
		lib = "anim@male@holding_weapon_2",
		anim = "holding_weapon_2_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["69"] = {
		lib = "anim@male@holding_weapon_4",
		anim = "holding_weapon_4_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["70"] = {
		lib = "anim@male@holding_weapon_kneel",
		anim = "anim@male@holding_weapon_kneel_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["71"] = {
		lib = "anim@male@holding_weapon_nvg",
		anim = "holding_weapon_nvg_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["72"] = {
		lib = "anim@male@holding_weapon_nvg_2",
		anim = "holding_weapon_nvg_2_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["73"] = {
		lib = "anim@male@hug_weapon",
		anim = "hug_weapon_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["74"] = {
		lib = "anim@male@hug_weapon_2",
		anim = "hug_weapon_2_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["75"] = {
		lib = "anim@male@pose_weapon",
		anim = "pose_weapon_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["76"] = {
		lib = "anim@male@pose_weapon_2",
		anim = "pose_weapon_2_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["77"] = {
		lib = "anim@male@pose_weapon_3",
		anim = "pose_weapon_3_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["78"] = {
		lib = "anim@male@aim_weapon",
		anim = "aim_weapon_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["79"] = {
		lib = "anim@male@preaim_weapon",
		anim = "preaim_weapon_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["80"] = {
		lib = "anim@male@run_weapon",
		anim = "run_weapon_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["81"] = {
		lib = "anim@male@tactical_kneel",
		anim = "tactical_kneel_clip",
		mov = false,
		loop = true,
		armed = true
	},
	["82"] = {
		lib = "mersa@immi_pose#01",
		anim = "immi_pose#01",
		mov = false,
		loop = true
	},
	["83"] = {
		lib = "anim@shaka_sit",
		anim = "shaka_clip",
		mov = false,
		loop = true
	},
	["84"] = {
		lib = "anim@male_casual_stance",
		anim = "casual_stance_clip",
		mov = false,
		loop = true
	},
	["85"] = {
		lib = "anim@male_insta_selfie",
		anim = "insta_selfie_clip",
		mov = false,
		loop = true
	},
	["86"] = {
		lib = "anim@male_bskball_dunk",
		anim = "bskball_dunk_clip",
		mov = false,
		loop = true
	},
	["87"] = {
		lib = "anim@male_bskball_photo_pose",
		anim = "photo_pose_clip",
		mov = false,
		loop = true
	},
	["88"] = {
		lib = "anim@male_bskball_hold",
		anim = "bskball_hold_clip",
		mov = false,
		loop = true
	},
	["89"] = {
		lib = "steph31@animation",
		anim = "steph31_clip",
		mov = false,
		loop = true
	},
	["90"] = {
		lib = "anim@luxury_custom_pose_props",
		anim = "luxury_custom_pose_props_clip",
		mov = false,
		loop = true
	},
	["91"] = {
		lib = "anim@luxury_custom_pose13",
		anim = "luxury_custom_pose13_clip",
		mov = false,
		loop = true
	},
	["92"] = {
		lib = "anim@luxury_custom_pose21",
		anim = "luxury_custom_pose21_clip",
		mov = false,
		loop = true
	},
	["93"] = {
		lib = "anim@luxury_custom_pose4",
		anim = "luxury_custom_pose4_clip",
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
		height = 0.35,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 49,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = true,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
	},
	["10"] = {
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
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
		mov = false,
		mov2 = false,
		loop = true
	},
	["16"] = {
		lib = 'dollie_mods@follow_me_002',
		anim1 = 'follow_me_002',
		lib2 = 'dollie_mods@follow_me_001',
		anim2 = 'follow_me_001',
		distans = 1.4,
		distans2 = 0.05,
		height = 0.03,
		spin = -10.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["17"] = {
		lib = 'holdhip@animation',
		anim1 = 'holdhip_clip',
		lib2 = 'holdhipb@animation',
		anim2 = 'holdhipb_clip',
		distans = 0.25,
		distans2 = 0.14,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["18"] = {
		lib = 'holdass@animation',
		anim1 = 'holdass_clip',
		lib2 = 'holdassb@animation',
		anim2 = 'holdassb_clip',
		distans = 0.2,
		distans2 = -0.5,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["19"] = {
		lib = 'coupleseat1b@animation',
		anim1 = 'coupleseat1b_clip',
		lib2 = 'coupleseat1@animation',
		anim2 = 'coupleseat1_clip',
		distans = 0.1,
		distans2 = -0.1,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["20"] = {
		lib = 'mx@pack4.1_a',
		anim1 = 'mx@pack4.1_a_clip',
		lib2 = 'mx@pack4.1_b',
		anim2 = 'mx@pack4.1_b_clip',
		distans = 0.0,
		distans2 = 0.53,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["21"] = {
		lib = 'mx@couple4.2_a',
		anim1 = 'mx@couple4.2_a_clip',
		lib2 = 'mx@couple4.2_b',
		anim2 = 'mx@couple4.2_b_clip',
		distans = 0.32,
		distans2 = 0.0,
		height = -0.05,
		spin = 180.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["22"] = {
		lib = 'mx@couple4.3_a',
		anim1 = 'mx@couple4.3_a_clip',
		lib2 = 'mx@couple4.3_b',
		anim2 = 'mx@couple4.3_b_clip',
		distans = -0.02,
		distans2 = 0.48,
		height = 0.0,
		spin = 140.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["23"] = {
		lib = 'mx@couple4.4_b',
		anim1 = 'mx@couple4.4_b_clip',
		lib2 = 'mx@couple4.4_a',
		anim2 = 'mx@couple4.4_a_clip',
		distans = -0.3,
		distans2 = 0.15,
		height = 0.79,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["24"] = {
		lib = 'mx@couple4.5_a',
		anim1 = 'mx@couple4.5_a_clip',
		lib2 = 'mx@couple4.5_b',
		anim2 = 'mx@couple4.5_b_clip',
		distans = 0.29,
		distans2 = 0.0,
		height = 0.17,
		spin = 180.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["25"] = {
		lib = 'gleis1@pose',
		anim1 = 'gleis1_clip',
		lib2 = 'gleis2@pose',
		anim2 = 'gleis2_clip',
		distans = 0.05,
		distans2 = -1.4,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	},
	["26"] = {
		lib = 'lean1@pose',
		anim1 = 'lean1_clip',
		lib2 = 'lean2@pose',
		anim2 = 'lean2_clip',
		distans = 0.2,
		distans2 = 0.0,
		height = 0.0,
		spin = 0.0,
		length = 1000000000,
		controlFlagMe = 33,
		controlFlagTarget = 33,
		animFlagTarget = 1,
		mov = false,
		mov2 = false,
		loop = true
	}
}

RegisterCommand("pose", function(source, args)
	local ped = PlayerPedId()
	local nome = args[1]
	if nome and dz_animacoes_single[nome] and (not IsPedArmed(ped,6) or dz_animacoes_single[nome].armed) and not IsPedSwimming(ped) then
		vRP.playAnim(dz_animacoes_single[nome].mov,{dz_animacoes_single[nome].lib,dz_animacoes_single[nome].anim},dz_animacoes_single[nome].loop)
	end
end,false)

RegisterCommand("casal",function(source, args)
	if not carryingBackInProgress then
		local player = PlayerPedId()
		if args and dz_animacoes[args[1]] then
			local closestPlayer = GetClosestPlayer(4)
			target = GetPlayerServerId(closestPlayer)
			if closestPlayer ~= nil then
				carryingBackInProgress = true
				TriggerServerEvent('dz_emotes:sync', closestPlayer, target, args[1])
			end
		end
	else
		carryingBackInProgress = false
		ClearPedSecondaryTask(GetPlayerPed(-1))
		DetachEntity(GetPlayerPed(-1), true, false)
		vRP.stopAnim()
		local closestPlayer = GetClosestPlayer(4)
		target = GetPlayerServerId(closestPlayer)
		TriggerServerEvent("dz_emotes:stop",target)
	end
end,false)

RegisterNetEvent('dz_emotes:syncTarget')
AddEventHandler('dz_emotes:syncTarget', function(target, nome)
	local playerPed = GetPlayerPed(-1)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	local spin = dz_animacoes[nome].spin
	carryingBackInProgress = true
	RequestAnimDict(dz_animacoes[nome].lib2)
	while not HasAnimDictLoaded(dz_animacoes[nome].lib2) do
		Citizen.Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(GetPlayerPed(-1), targetPed, 0, dz_animacoes[nome].distans2, dz_animacoes[nome].distans, dz_animacoes[nome].height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	vRP.playAnim(dz_animacoes[nome].mov2,{dz_animacoes[nome].lib2,dz_animacoes[nome].anim2},dz_animacoes[nome].loop)
end)

RegisterNetEvent('dz_emotes:syncMe')
AddEventHandler('dz_emotes:syncMe', function(nome)
	local playerPed = GetPlayerPed(-1)
	RequestAnimDict(dz_animacoes[nome].lib)

	while not HasAnimDictLoaded(dz_animacoes[nome].lib) do
		Citizen.Wait(10)
	end
	vRP.playAnim(dz_animacoes[nome].mov,{dz_animacoes[nome].lib,dz_animacoes[nome].anim1},dz_animacoes[nome].loop)
	Citizen.Wait(dz_animacoes[nome].length)
end)

RegisterNetEvent('dz_emotes:cl_stop')
AddEventHandler('dz_emotes:cl_stop', function()
	carryingBackInProgress = false
	ClearPedSecondaryTask(GetPlayerPed(-1))
	DetachEntity(GetPlayerPed(-1), true, false)
	vRP.stopAnim()
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
	if closestDistance <= radius then
		return closestPlayer
	else
		return nil
	end
end

local piggyBackInProgress = false

RegisterNetEvent('dz_emotes:syncTarget')
AddEventHandler('dz_emotes:syncTarget', function(target, nome)
	local playerPed = GetPlayerPed(-1)
	local targetPed = GetPlayerPed(GetPlayerFromServerId(target))
	local spin = dz_animacoes[nome].spin
	carryingBackInProgress = true
	RequestAnimDict(dz_animacoes[nome].lib2)
	while not HasAnimDictLoaded(dz_animacoes[nome].lib2) do
		Citizen.Wait(10)
	end
	if spin == nil then spin = 180.0 end
	AttachEntityToEntity(GetPlayerPed(-1), targetPed, 0, dz_animacoes[nome].distans2, dz_animacoes[nome].distans, dz_animacoes[nome].height, 0.5, 0.5, spin, false, false, false, false, 2, false)
	vRP.playAnim(dz_animacoes[nome].mov2,{dz_animacoes[nome].lib2,dz_animacoes[nome].anim2},dz_animacoes[nome].loop)
end)

RegisterNetEvent('dz_emotes:syncMe')
AddEventHandler('dz_emotes:syncMe', function(nome)
	local playerPed = GetPlayerPed(-1)
	RequestAnimDict(dz_animacoes[nome].lib)

	while not HasAnimDictLoaded(dz_animacoes[nome].lib) do
		Citizen.Wait(10)
	end
	vRP.playAnim(dz_animacoes[nome].mov,{dz_animacoes[nome].lib,dz_animacoes[nome].anim1},dz_animacoes[nome].loop)
	Citizen.Wait(length)
end)

RegisterNetEvent('dz_emotes:cl_stop')
AddEventHandler('dz_emotes:cl_stop', function()
	piggyBackInProgress = false
	ClearPedSecondaryTask(GetPlayerPed(-1))
	DetachEntity(GetPlayerPed(-1), true, false)
	vRP.stopAnim()
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
