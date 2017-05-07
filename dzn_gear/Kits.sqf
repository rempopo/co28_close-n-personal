// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, BINOCULAR_ITEM
#define ASSIGNED_ITEMS_SN	"ItemMap","ItemCompass","ItemWatch","ItemRadio", NVG_NIGHT_ITEM, "ACE_Vector"

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

//Friendly forces

#define pmc_uni ["CUP_I_B_PMC_Unit_26","CUP_I_B_PMC_Unit_18"]
#define pmc_face ["CUP_RUS_Balaclava_blk","G_Balaclava_blk","G_Bandanna_aviator","G_Bandanna_blk","rhs_scarf"]
#define pmc_head ["H_Cap_blk","CUP_H_USArmy_Helmet_Pro_gog","CUP_H_USArmy_Helmet_Pro","CUP_H_USArmy_Helmet_ECH2_Black","CUP_H_USArmy_Helmet_ECH1_Black","CUP_H_PMC_Cap_PRR_Grey","CUP_H_FR_Cap_Headset_Green","CUP_H_PMC_Cap_EP_Grey","CUP_H_PMC_Cap_Grey"]

kit_pmc_r = [
	["<EQUIPEMENT >>  ",pmc_uni,"CUP_V_PMC_CIRAS_Winter_Patrol","TRYK_B_Carryall_wh",pmc_head,pmc_face],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["CUP_64Rnd_9x19_Bizon_M",4],["PRIMARY MAG",5]]]
];

kit_pmc_gr = [
	["<EQUIPEMENT >>  ",pmc_uni,"CUP_V_PMC_CIRAS_Winter_Grenadier","TRYK_B_Carryall_wh",pmc_head,pmc_face],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",5],["HANDGUN MAG",10],["1Rnd_SmokeRed_Grenade_shell",4],["UGL_FlareCIR_F",4],["UGL_FlareWhite_F",4]]]
];

kit_pmc_ar = [
	["<EQUIPEMENT >>  ",pmc_uni,"CUP_V_PMC_CIRAS_Winter_Veh","TRYK_B_Carryall_wh",pmc_head,pmc_face],
	["<PRIMARY WEAPON >>  ","CUP_smg_bizon","CUP_64Rnd_9x19_Bizon_M",["CUP_muzzle_Bizon","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",8]]]
];

kit_pmc_ftl = [
	["<EQUIPEMENT >>  ",pmc_uni,"CUP_V_PMC_CIRAS_Winter_Grenadier","TRYK_B_Carryall_wh",pmc_head,pmc_face],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["ACE_HuntIR_monitor",1],["ACE_IR_Strobe_Item",2],["ACE_DefusalKit",1],["PRIMARY MAG",5],["HANDGUN MAG",10],["1Rnd_SmokeRed_Grenade_shell",4],["UGL_FlareCIR_F",4],["UGL_FlareWhite_F",4],["SmokeShellRed",2],["SmokeShellGreen",2],["SmokeShell",2],["ACE_HuntIR_M203",10],["Chemlight_green",2],["ACE_Chemlight_HiRed",2],["Chemlight_blue",2]]]
];

kit_pmc_sl = [
	["<EQUIPEMENT >>  ",pmc_uni,"CUP_V_PMC_CIRAS_Winter_Patrol","tf_rt1523g_black",pmc_head,pmc_face],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["ACE_HuntIR_monitor",1],["ACE_IR_Strobe_Item",1],["Chemlight_green",1],["ACE_HuntIR_M203",10],["PRIMARY MAG",3]]]
];

kit_pmc_sn = [
	["<EQUIPEMENT >>  ",pmc_uni,"CUP_V_PMC_CIRAS_Winter_TL","TRYK_B_Carryall_wh",pmc_head,pmc_face],
	["<PRIMARY WEAPON >>  ","hlc_rifle_PSG1A1_RIS","hlc_20rnd_762x51_b_G3",["","","ACE_optic_LRPS_2D",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Duty","16Rnd_9x21_Mag",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_SN],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["Chemlight_blue",1],["Chemlight_green",1],["ACE_Chemlight_HiRed",1],["ACE_Chemlight_HiYellow",1]]],
	["<BACKPACK ITEMS >> ",[["ACE_HuntIR_monitor",1],["ACE_Tripod",1],["ACE_SpottingScope",1],["ACE_RangeCard",1],["ACE_Kestrel4500",1],["PRIMARY MAG",5],["HANDGUN MAG",3]]]
];

kit_pmc_pl = [
	["<EQUIPEMENT >>  ",pmc_uni,"CUP_V_PMC_CIRAS_Winter_Patrol","tf_rt1523g_black",pmc_head,pmc_face],
	["<PRIMARY WEAPON >>  ","CUP_smg_MP5SD6","CUP_30Rnd_9x19_MP5",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","rhs_weap_M320","rhs_mag_M441_HE",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HandGrenade",2],["PRIMARY MAG",4]]],
	["<BACKPACK ITEMS >> ",[["ACE_HuntIR_monitor",1],["ACE_IR_Strobe_Item",1],["Chemlight_green",1],["ACE_HuntIR_M203",10],["PRIMARY MAG",3]]]
];

kit_cargo = [
	[],
	[["ACE_HuntIR_M203",30],["CUP_30Rnd_9x19_MP5",40],["HandGrenade",10],["CUP_64Rnd_9x19_Bizon_M",20],["rhs_mag_M441_HE",30],["1Rnd_SmokeRed_Grenade_shell",10],["UGL_FlareCIR_F",10],["UGL_FlareWhite_F",10],["hlc_20rnd_762x51_b_G3",10],["16Rnd_9x21_Mag",10]],
	[["ACE_HuntIR_monitor",2],["ACE_IR_Strobe_Item",10],["ACE_fieldDressing",20],["ACE_packingBandage",20],["ACE_elasticBandage",20],["ACE_tourniquet",5],["ACE_morphine",5],["ACE_epinephrine",5],["ACE_quikclot",20],["B_UavTerminal",1]],
	[["B_UAV_01_backpack_F",1]]
];

kit_vip = [
	["<EQUIPEMENT >>  ","CUP_U_C_Suit_02","","","TRYK_H_wig",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[]],
	["<BACKPACK ITEMS >> ",[]]
];


// enemy forces

#define ALAS_HEAD ["CUP_H_C_Beanie_03","CUP_H_C_Ushanka_04","H_Cap_oli","CUP_H_C_Beanie_01","CUP_H_FR_BandanaWdl","H_Booniehat_oli"]
 
kit_alas_random = [
    "kit_alas_r"
    ,"kit_alas_ar"
    ,"kit_alas_gr"
    ,"kit_alas_at"
    ,"kit_alas_lmg"
    ,"kit_alas_mm"
];
kit_alas_r =
    [
    ["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Commander","CUP_V_O_Ins_Carrier_Rig_Com","",ALAS_HEAD,""],
    ["<PRIMARY WEAPON >>  ","CUP_arifle_AK74","CUP_30Rnd_545x39_AK_M",["","","",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemRadio","ItemWatch","Binocular"],
    ["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",9]]],
    ["<BACKPACK ITEMS >> ",[["MiniGrenade",2],["PRIMARY MAG",8]]]
];
kit_alas_ar =
    [
    ["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Commander","CUP_V_O_Ins_Carrier_Rig_MG","CUP_B_AlicePack_Bedroll",ALAS_HEAD,""],
    ["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemRadio","ItemWatch"],
    ["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",1]]],
    ["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2],["MiniGrenade",2]]]
];
kit_alas_at =
    [
    ["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Commander","CUP_V_O_Ins_Carrier_Rig","CUP_B_RPGPack_Khaki",ALAS_HEAD,""],
    ["<PRIMARY WEAPON >>  ","CUP_arifle_AK74","CUP_30Rnd_545x39_AK_M",["","","",""]],
    ["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_OG7_M",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemRadio","ItemWatch"],
    ["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",9]]],
    ["<BACKPACK ITEMS >> ",[["SECONDARY MAG",2],["CUP_PG7V_M",1],["MiniGrenade",2]]]
];
kit_alas_lmg =
    [
    ["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Commander","CUP_V_O_Ins_Carrier_Rig_MG","CUP_B_SLA_Medicbag",ALAS_HEAD,""],
    ["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemRadio","ItemWatch","Binocular"],
    ["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",5]]],
    ["<BACKPACK ITEMS >> ",[["MiniGrenade",2],["PRIMARY MAG",8]]]
];
kit_alas_gr =
    [
    ["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Commander","CUP_V_O_Ins_Carrier_Rig_Light","CUP_B_SLA_Medicbag",ALAS_HEAD,""],
    ["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL","CUP_30Rnd_545x39_AK_M",["","","",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemRadio","ItemWatch"],
    ["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",9]]],
    ["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",15],["MiniGrenade",2]]]
];
kit_alas_mm =
    [
    ["<EQUIPEMENT >>  ","CUP_U_O_CHDKZ_Commander","CUP_V_O_Ins_Carrier_Rig","",ALAS_HEAD,""],
    ["<PRIMARY WEAPON >>  ","CUP_arifle_AK74","CUP_30Rnd_545x39_AK_M",["","","CUP_optic_PSO_1",""]],
    ["<LAUNCHER WEAPON >>  ","","",["","","",""]],
    ["<HANDGUN WEAPON >>  ","","",["","","",""]],
    ["<ASSIGNED ITEMS >>  ","ItemMap","ItemCompass","ItemRadio","ItemWatch"],
    ["<UNIFORM ITEMS >> ",[["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_MX991",1],["ACE_EarPlugs",1],["ACE_MapTools",1]]],
    ["<VEST ITEMS >> ",[["PRIMARY MAG",9]]],
    ["<BACKPACK ITEMS >> ",[]]
];
