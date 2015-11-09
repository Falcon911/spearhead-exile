/*///////////////////////////////////////////
//Filename : ETG_HeliCrashAndDropScript.sqf//
//Author : Kellojo///////////////////////////
//Version : 1.4.1 ///////////////////////////
//Release : 22.10.2015 //////////////////////
/////////////////////////////////////////////

/////////
//Usage//
/////////

This script allows you to add heli crashes and supply drops to your mission.

////////////
//Features//
////////////

- cargo drops
- heli crashes
- several tiers of loot
- spawn position of the helis is randomly selected
- type of cargo is randomly selected
- type of heli is randomly selected
- type of mission is randomly selected
- drop off point/ crash point is randomly selected
- adjustable loot tables
- loot is completely randomized
- time between drops is now configurable
- toggable markers at the heli crashes/supply drops
- loot can spawn inside of the crates and on the ground (selectable)
- added more configurable options such as (helis,crates,loot on ground etc.)
- added random time between drops/crashes function
- added configurable altitude
- added toggable fire at crashsites
- added toggable AI to crashes and supply drops
- added automatic deletion of crashes/supply drops

/////////
//Notes//
/////////

If you have any ideas for the script feel free to add me on Steam. My name is "Kellojo" ;).

//////////////
//Known Bugs//
//////////////
Here I will list every know bug that im currently working on. 
If you have any ideas how to fix them writing a comment or a private message would be nice ;).
- Heli Crashes: sometimes the heli wrack spawns in the ground and the loot around it spawns in the ground...

////////////////////////////////////////////////
//Can I use this script for my mission/server?//
////////////////////////////////////////////////

Yes, you can use this script for your server aswell as you can modify it however you want.
Its not necessary to give credit to me but it would be appreciated. :)

//////////////////////////////////////////////
//How can i run the script?---> Installation//
//////////////////////////////////////////////

Simply add these two lines below to your init.sqf and the script will do the rest for you.

ETG_Cargo_Drop_Mission = 0;
_nul = execVM "ETG_HeliCrashAndDropScript.sqf";

*/

//Edit below me:
	
/////////////////
//Configuration//
/////////////////
_SleepTime = 600;											//Time between every heli crash/supply drop in seconds (integer)
_SleepTimeRandom = true;									//If true will randomize your time between the drops/crashes
_AllowMarkers = false;										//Do you want markers at the helicrashes and supply drops? (true,false)
_MarkerType = "n_service";									//Type of marker? (https://community.bistudio.com/wiki/cfgMarkers) (string)
_LootOnGround = true;										//Do you want to spawn the loot at the heli crash on the ground or inside of the boxes? (true,false)
_FlyHeight = 500;											//Height the heli shoud fly at - altitude (in meters)
_LootSpawnRadius = 20;										//Radius around the crate/crates the loot will spawn in
_CrateSpawnRadius = 30;										//Radius around the crashsite the crates will spawn in
_FireAtCrashSite = true;									//Should fire be around the helicrashsite ? (true/false)
_AI_Crash = true;											//AI at crashes ? (true/false)
_AI_Drop = true;											//AI at supply drops ? (true/false)
_DeletionDelay = 720;										//Time the helicrashes/supply drops will stay and be deleted after (time in seconds)
_CratesAtCrashes = false;                                  	//Do you want crates at your heli crash ? (true/false) - keep in mind to set _LootOnGround to true when setting this to false!!!
_MaxAmmountOfItems = 5;										//Ammount of Magazines and Items that can spawn at one lootpile
_MaxItemCount = 10;											//Max ammount of individual Weapons/Magazines/Backpacks and Items to spawn (weapons and backpacks will be a third of this number)
_RPT = true;												//Writes debug information to the rpt file. (true/false)
_Debug = false;												//creates a marker on the map matching the position of the heli (true/false)


//Change this path,if you have moved the script in a special folder of your mission, its the one to the script itself
_ETG_ScriptPath = "addons\ETG_HeliCrashAndDropScript.sqf";

//Edit these coordinates, these are the spawn coordinates of the helis/planes choose coodrinates at the corners of the map (use coodrinates according to your map/likings - these are for Altis)
_ETG_StartionPositions = [[15524.6,117.31,0],[17130.6,2665.97,0],[1400.5,11481.6,0],[2952.32,17932,0]];

//Edit this coordinate it should be roughly the center of the map you are playing on (this one is for Altis)
_CenterOfMap = [9424.54,9093.86,0];

//Available heli/plane types - add your own ones
_ETG_HeliTypes = ["I_Heli_light_03_unarmed_F","O_Heli_Transport_04_F","B_Heli_Transport_01_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_box_F","B_Heli_Transport_03_unarmed_F","I_Heli_Transport_02_F"]; 
 
//Add your types of cargo here (crate classnames)
_ETG_CargoTypes = ["I_CargoNet_01_ammo_F","O_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","Box_East_AmmoVeh_F","Box_NATO_AmmoVeh_F"];

//Lootboxes spawning at heli crashes (small boxes/crates look better)
_ETG_HeliCrashLootBoxes = ["Box_NATO_AmmoVeh_F","Box_East_AmmoVeh_F","Box_IND_AmmoVeh_F","I_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F","O_CargoNet_01_ammo_F","Box_East_Support_F","Box_NATO_AmmoOrd_F","Box_East_AmmoOrd_F"];

//AI that will spawn at the crashsites/drops (use classnames of units)
_ETG_AIUnits = ["O_recon_medic_F", "O_Soldier_lite_F","O_Soldier_GL_F","O_Soldier_A_F","O_Soldier_lite_F"];

////////////////////////////////////////////////////////////////
//Only edit anything down here, if you know what you are doing//
////////////////////////////////////////////////////////////////

//Do not edit this ;)
if (isServer) then {
	//Check if the script is already running
	if (ETG_Cargo_Drop_Mission != 1) then {
		ETG_Cargo_Drop_Mission = 1;	

	//Scan for bad data
		if (!_CratesAtCrashes) then {
			_LootOnGround = true;
		};
	
	//Set the starting position of the heli
		_startPos = _ETG_StartionPositions call BIS_fnc_selectRandom;
	
	//Get the position of the drop/crash	
		_ETG_Main_Coordinates = [_CenterOfMap, 1, 15000, 3, 0, 200, 0] call BIS_fnc_findSafePos;
	
	//Choose heli type
		_ETG_Heli_Type = _ETG_HeliTypes call BIS_fnc_selectRandom;  

	//Choose between cargo drop or a heli crash
		_ETG_Mission_Type = ["Cargo_Drop","Heli_Crash"] call BIS_fnc_selectRandom;

	//Choose cargo
		_ETG_Cargo_Type = _ETG_CargoTypes call BIS_fnc_selectRandom;  
	
	//set sleeptime if random is true
		if (_SleepTimeRandom) then {_SleepTime = round(random _SleepTime)};
	
	/////////////
	//Loottable//
	/////////////
	//Loot that will spawn inside the cargo drop/ or at the crates of the heli drop
	//If you want to edit the loottable please notice that in Arma 3 there are different types of 'loot' (weapons,backpacks,items,magazines)
	//Every tier in this "list" of the six tiers has 4 variables _ETG_Backpacks (for backpacks) _ETG_Magazines (for magazines) _ETG_Weapons (for weapons) _ETG_Items (for items)
	//Edit the 4 variables like this:
	//			_ETG_Weapons = ["Classname","Classname"];
	//			_ETG_Weapons = ["srifle_EBR_ARCO_pointer_F","srifle_EBR_ARCO_pointer_F"];
	//Add classnames (only classnames eg: "B_Bergen_rgr","B_FieldPack_oucamo") to these arrays.
	//_ETG_Magazines is for general items (e.g. for wood gates etc.)
	//_ETG_WeaponMagazines is for weapon magazines
	_ETG_Backpacks = 		['B_AssaultPack_khk','B_AssaultPack_dgtl','B_AssaultPack_rgr','B_AssaultPack_sgg','B_AssaultPack_blk','B_AssaultPack_cbr','B_AssaultPack_mcamo','B_Kitbag_mcamo','B_Kitbag_sgg','B_Kitbag_cbr','B_Bergen_sgg','B_Bergen_mcamo','B_Bergen_rgr','B_Bergen_blk','B_FieldPack_blk','B_FieldPack_ocamo','B_FieldPack_oucamo','B_FieldPack_cbr','B_Carryall_ocamo','B_Carryall_oucamo','B_Carryall_mcamo','B_Carryall_oli','B_Carryall_khk','B_Carryall_cbr','B_OutdoorPack_blk','B_OutdoorPack_tan','B_OutdoorPack_blu','B_HuntingBackpack'];
	_ETG_Weapons = 			['srifle_DMR_01_F','srifle_DMR_01_SOS_F','srifle_EBR_F','srifle_EBR_MRCO_pointer_F','srifle_EBR_ACO_F','srifle_EBR_ARCO_pointer_snds_F','srifle_EBR_Hamr_pointer_F','srifle_GM6_F','srifle_LRR_F','srifle_LRR_LRPS_F','LMG_Mk200_F','LMG_Zafir_F','hgun_ACPC2_F','hgun_ACPC2_snds_F','hgun_Pistol_heavy_01_F','hgun_Rook40_F','arifle_Katiba_F','arifle_Katiba_GL_F','arifle_Katiba_ARCO_pointer_F','arifle_Katiba_ARCO_pointer_snds_F','arifle_Katiba_ACO_pointer_snds_F','arifle_Mk20C_F','arifle_Mk20_plain_F','arifle_Mk20_MRCO_pointer_F','arifle_MXC_F','arifle_MX_Holo_pointer_F','arifle_MX_GL_ACO_F','arifle_MXC_Holo_pointer_snds_F','arifle_MX_ACO_pointer_snds_F','arifle_MXM_RCO_pointer_snds_F','arifle_MXM_Black_F','arifle_SDAR_F','arifle_TRG20_F','arifle_TRG21_MRCO_F','SMG_01_F','hgun_PDW2000_Holo_snds_F','SMG_02_ARCO_pointg_F','srifle_LRR_camo_LRPS_F','srifle_DMR_01_DMS_snds_BI_F','srifle_DMR_02_camo_F','srifle_DMR_02_DMS_F','srifle_DMR_03_F','srifle_DMR_04_F','srifle_DMR_05_blk_F','srifle_DMR_04_DMS_F','srifle_DMR_06_olive_F','MMG_01_tan_F','MMG_01_hex_ARCO_LP_F','MMG_02_sand_F','MMG_02_camo_F'];
	_ETG_Items = 			['V_TacVestIR_blk','V_TacVestCamo_khk','V_TacVest_oli','V_TacVest_khk','V_TacVest_camo','V_TacVest_brn','V_TacVest_blk_POLICE','V_TacVest_blk','V_Rangemaster_belt','V_PlateCarrierSpec_rgr','V_PlateCarrierIAGL_dgtl','V_PlateCarrierIA2_dgtl','V_PlateCarrierIA1_dgtl','V_PlateCarrierGL_rgr','V_PlateCarrier3_rgr','V_PlateCarrier2_rgr','V_PlateCarrier1_rgr','V_PlateCarrier1_blk','V_HarnessOSpec_gry','V_HarnessOSpec_brn','V_HarnessOGL_gry','V_HarnessOGL_brn','V_HarnessO_gry','V_HarnessO_brn','V_Chestrig_rgr','V_Chestrig_oli','V_Chestrig_khk','V_Chestrig_blk','V_BandollierB_rgr','V_BandollierB_oli','V_BandollierB_khk','V_BandollierB_cbr','V_BandollierB_blk','ItemGPS','MineDetector','Rangefinder','NVGoggles','Laserdesignator','FirstAidKit','I_UavTerminal','muzzle_snds_H','muzzle_snds_L','uzzle_snds_B','muzzle_snds_H_MG','optic_Arco','optic_Hamr','optic_SOS','optic_Holosight','acc_flashlight','acc_pointer_IR','optic_MRCO','ptic_Nightstalker','optic_NVS','optic_DMS','optic_LRPS','optic_AMS','optic_KHS_hex','bipod_01_F_snd','bipod_01_F_blk','bipod_01_F_mtp','U_B_CombatUniform_mcam','U_B_CombatUniform_mcam_vest','U_B_GhillieSuit','U_Rangemaster','U_I_CombatUniform','U_I_CombatUniform_tshirt','U_I_Wetsuit','U_I_OfficerUniform','U_I_GhillieSuit','U_IG_Guerilla1_1','U_IG_Guerilla2_1','U_OG_Guerilla2_1','U_C_Journalist','V_Press_F','V_RebreatherIA','U_B_FullGhillie_lsh','U_B_FullGhillie_sard','U_B_FullGhillie_ard','U_O_FullGhillie_lsh','U_O_FullGhillie_sard','U_O_FullGhillie_ard','U_I_FullGhillie_ard','U_I_FullGhillie_sard','_PlateCarrierGL_blk','V_PlateCarrierGL_mtp','V_PlateCarrierSpec_blk','V_PlateCarrierSpec_mtp','V_PlateCarrierIAGL_oli'];
	_ETG_Magazines = 		['Exile_Item_BBQSandwich','Exile_Item_Catfood','Exile_Item_ChristmasTinner','Exile_Item_GloriousKnakworst','Exile_Item_SausageGravy','Exile_Item_Surstromming','Exile_Item_Surstromming_Cooked','Exile_Item_PlasticBottleEmpty','Exile_Item_PlasticBottleDirtyWater','Exile_Item_PlasticBottleSaltWater','Exile_Item_PlasticBottleFreshWater','Exile_Item_Energydrink','Exile_Item_Beer','Exile_Item_JunkMetal','Exile_Item_LightBulb','Exile_Item_MetalBoard','Exile_Item_MetalPole','Exile_Item_Rope','Exile_Item_PortableGeneratorKit','Exile_Item_SafeKit','Exile_Item_FuelCanisterFull','Exile_Item_FuelCanisterEmpty','Exile_Item_ExtensionCord','Exile_Item_Flag','Exile_Item_FortificationUpgrade','Exile_Item_DuctTape','Exile_Item_CamoTentKit','Exile_Item_CampFireKit','Exile_Item_InstaDoc','Exile_Item_WoodLog','Exile_Item_WoodPlank','Exile_Item_WoodFloorKit','Exile_Item_WoodGateKit'];		
	_ETG_WeaponMagazines =	['20Rnd_762x51_Mag','5Rnd_127x108_Mag','7Rnd_408_Mag','200Rnd_65x39_cased_Box','200Rnd_65x39_cased_Box_Tracer','200Rnd_65x39_cased_Box','9Rnd_45ACP_Mag','11Rnd_45ACP_Mag','16Rnd_9x21_Mag','30Rnd_65x39_caseless_green','30Rnd_556x45_Stanag','30Rnd_65x39_caseless_mag','100Rnd_65x39_caseless_mag','30Rnd_556x45_Stanag','30Rnd_9x21_Mag','30Rnd_45ACP_Mag_SMG_01','30Rnd_9x21_Mag','5Rnd_127x108_Mag','7Rnd_408_Mag','6Rnd_GreenSignal_F','10Rnd_762x54_Mag','200Rnd_65x39_cased_Box','30Rnd_65x39_caseless_mag','10Rnd_338_Mag','20Rnd_762x51_Mag','20Rnd_762x51_Mag','10Rnd_127x54_Mag','10Rnd_93x64_DMR_05_Mag','130Rnd_338_Mag','150Rnd_93x64_Mag'];

	
//if its a cargo drop do this		
	if (_ETG_Mission_Type == "Cargo_Drop") then [ {
		//Wrtie to RPT.log if wanted
			if (_RPT) then {
				diag_log "###ETG_HeliCrashAndDropScript by Kellojo###";
				diag_log "###Cargo drop is being created.";
				diag_log "###Spawning the helicopter...";
				diag_log format ["###Starting position:       %1",_startPos];
				diag_log format ["###Estimated drop position: %1",_ETG_Main_Coordinates];
				diag_log format ["###Used helicopter:         %1",_ETG_Heli_Type];
				diag_log "###End###";
			};
		
		//Create the heli and gives it a name
			_ETG_HeliCrew = createGroup East;
			[_startPos, 180,_ETG_Heli_Type, _ETG_HeliCrew] call bis_fnc_spawnvehicle;
			_ETG_Transport_Vehicle_selection = nearestObjects [_startPos, ["air"], 100];
			_ETG_Transport_Vehicle = _ETG_Transport_Vehicle_selection select 0;
			_ETG_Transport_Vehicle allowDamage false;
			
		//Disable AI
			_ETG_HeliCrew setCombatMode "BLUE";
			{
				_x disableAI "AUTOTARGET";
				_x disableAI "TARGET";
				_x disableAI "SUPPRESSION";
			} forEach units _ETG_HeliCrew;
			
		//Create marker if wanted
			if (_Debug) then {
					_marker = createMarker ["ETG_DebugMarker",[0,0,0]];
					_marker setMarkerType "o_air";
				[_ETG_Transport_Vehicle,_marker] spawn {
					sleep 1;
					_marker = _this select 1;
					_Heli = _this select 0;
					while {alive _Heli} do {
						_marker setMarkerPos position _Heli;
					};
					deleteMarker _marker;
				};
			};
			
			ETG_TransportVehicle = _ETG_Transport_Vehicle;

		//Create cargo an clear its inventory
			_ETG_Cargo = _ETG_Cargo_Type createVehicle _startPos;
			clearMagazineCargoGlobal _ETG_Cargo;
			clearWeaponCargoGlobal _ETG_Cargo;
			clearItemCargoGlobal _ETG_Cargo;
			clearBackpackCargoGlobal _ETG_Cargo;
				
		//Attaches the cargo to the transport vehicle
			_ETG_Cargo attachTo [_ETG_Transport_Vehicle, [0, 2, 0]];	
			ETG_Cargo = _ETG_Cargo;
				
		//Waypoint for the Helicopter
			_ETG_HeliWaypoint1 = _ETG_HeliCrew addWaypoint [_ETG_Main_Coordinates, 0];
			_ETG_HeliWaypoint1 setWaypointType "move";
			_ETG_HeliWaypoint1 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;	
			
		//sets the second waypoint
			_ETG_HeliWaypoint1 = _ETG_HeliCrew addWaypoint [[0,0,0], 0];
			_ETG_HeliWaypoint1 setWaypointType "move";
			_ETG_HeliWaypoint1 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;	

		//waits until the distance to the drop point is > 500
			waitUntil {_ETG_Transport_Vehicle distance _ETG_Main_Coordinates < 400};	
			_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 1];
			deleteWaypoint [_ETG_HeliCrew, 0];
			_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 1];

		//Unloading the cargo
			_ETG_Cargo attachTo [_ETG_Transport_Vehicle, [0, -15, -2] ];
			_ETG_Cargo_Position = getPos _ETG_Cargo;
			detach _ETG_Cargo;
			_ETG_Parachute = "B_Parachute_02_F" createVehicle _ETG_Cargo_Position;    
			_ETG_Parachute setPos _ETG_Cargo_Position;
			_ETG_Cargo attachTo [_ETG_Parachute, [0, 0, -1.2] ];   
			
		//Attaching a smoke grenade to the cargo
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];
			sleep 10;
			_ETG_CargoSmoke setDamage 1;
			deleteVehicle _ETG_CargoSmoke;
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];
			
		//Waits until cargo is close to the ground and deletes the parachute	
			waituntil {(getPos _ETG_Cargo select 2) < 4};	
			detach _ETG_Cargo;
			sleep 4;
			deleteVehicle _ETG_Parachute;
			_ETG_CargoSmoke setDamage 1;
			deleteVehicle _ETG_CargoSmoke;
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];
			
		//Spawn AI if wanted
			if (_AI_Drop) then {
				_HelicrashUnits = [position _ETG_Cargo, EAST, _ETG_AIUnits,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
				//Add waypoint for the AI
				_HeliCrashGroupLeader = leader _HelicrashUnits;
				_HeliCrashUnitsGroup = group _HeliCrashGroupLeader;
				_HeliCrashUnitsGroup addWaypoint [position	_ETG_Cargo, 0];
				[_HeliCrashUnitsGroup, 0] setWaypointType "GUARD";
				[_HeliCrashUnitsGroup, 0] setWaypointBehaviour "AWARE";
		
					//delete AI after x hours
					[_DeletionDelay,_HelicrashUnits] spawn {
						sleep (_this select 0);
						{ deleteVehicle _x; } forEach units (_this select 1);
					};
				};
			
		//Create Loot
			if (_LootOnGround) then {
				//Setup variables
				_WeaponCount = 0;
				_PlannedWeaponCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_WeaponCount < _PlannedWeaponCount} do {
					_WeaponCount = _WeaponCount + 1;
					_CurrentItem = _ETG_Weapons call BIS_fnc_selectRandom;
					_Ammount = 1;
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addWeaponCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_Magazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_ItemCount = 0;
				_PlannedItemCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_ItemCount < _PlannedItemCount} do {
					_ItemCount = _ItemCount + 1;
					_CurrentItem = _ETG_Items call BIS_fnc_selectRandom;
					_Ammount = 1;
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addItemCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_BackpackCount = 0;
				_PlannedBackpackCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_BackpackCount < _PlannedBackpackCount} do {
					_BackpackCount = _BackpackCount + 1;
					_CurrentItem = _ETG_Backpacks call BIS_fnc_selectRandom;
					_Ammount = 1;
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addBackpackCargoGlobal [_CurrentItem,_Ammount]	
				};
				
				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_WeaponMagazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_Cargo,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};

			} else {
				
				//Setup variables
				_WeaponCount = 0;
				_PlannedWeaponCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_WeaponCount < _PlannedWeaponCount} do {
					sleep 0.1;
					_WeaponCount = _WeaponCount + 1;
					_CurrentItem = _ETG_Weapons call BIS_fnc_selectRandom;
					_Ammount = 1;
					_ETG_Cargo addWeaponCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					sleep 0.1;
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_Magazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_ETG_Cargo addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_ItemCount = 0;
				_PlannedItemCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_ItemCount < _PlannedItemCount} do {
					sleep 0.1;
					_ItemCount = _ItemCount + 1;
					_CurrentItem = _ETG_Items call BIS_fnc_selectRandom;
					_Ammount = 1;
					_ETG_Cargo addItemCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_BackpackCount = 0;
				_PlannedBackpackCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_BackpackCount < _PlannedBackpackCount} do {
					sleep 0.1;
					_BackpackCount = _BackpackCount + 1;
					_CurrentItem = _ETG_Backpacks call BIS_fnc_selectRandom;
					_Ammount = 1;
					_ETG_Cargo addBackpackCargoGlobal [_CurrentItem,_Ammount]	
				};
				
				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					sleep 0.1;
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_WeaponMagazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_ETG_Cargo addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};
			};	
				
		//More Smoke
			sleep 10;
			_ETG_CargoSmoke setDamage 1;
			deleteVehicle _ETG_CargoSmoke;
			_ETG_CargoSmoke = "SmokeShellRed"  createVehicle position _ETG_Cargo;
			_ETG_CargoSmoke attachto [_ETG_Cargo,[0,0,0]];
			_ETG_Cargo setVectorUp surfaceNormal position _ETG_Cargo;
			
		//Create markers if wanted
			if (_AllowMarkers) then {
				_marker = createMarker [(position _ETG_Cargo) joinString " ", position _ETG_Cargo];
				_marker setMarkerType "n_service";
				
				[_DeletionDelay,_marker] spawn {
					sleep (_this select 0);
					deleteMarker (_this select 1);
				};
			};
			
		//delete supply drop after x hours
			[_DeletionDelay,_ETG_Cargo] spawn {
				sleep (_this select 0);
				deleteVehicle (_this select 1);
			};
			
		//Delete the heli
			waituntil {_ETG_Transport_Vehicle distance [0,0,0] < 10000};
			deleteVehicle _ETG_Transport_Vehicle;
				
			ETG_Cargo_Drop_Mission = 0;	
		
		//start a new cargo drop / heli crash
			sleep _SleepTime; 
			_nul = execVM _ETG_ScriptPath;
	}, {} ];
	
//Run if its a heli crash
	if (_ETG_Mission_Type == "Heli_Crash") then [ {
		//Writes to the rpt file if wanted		
			if (_RPT) then {
				diag_log "###ETG_HeliCrashAndDropScript by Kellojo###";
				diag_log "###Heli crash is being created.";
				diag_log "###Spawning the helicopter...";
				diag_log format ["###Starting position:       %1",_startPos];
				diag_log format ["###Estimated drop position: %1",_ETG_Main_Coordinates];
				diag_log format ["###Used helicopter:         %1",_ETG_Heli_Type];
				diag_log "###End###";
			};
		
		//Get two more positions
			_ETG_2cnd_Coordinates = [_CenterOfMap, 1, 15000, 3, 0, 200, 0] call BIS_fnc_findSafePos;
			_ETG_3rd_Coordinates = [_CenterOfMap, 1, 15000, 3, 0, 200, 0] call BIS_fnc_findSafePos;
		
		//Create the heli and gives it a name
			_ETG_HeliCrew = createGroup East;
			[_startPos, 180,_ETG_Heli_Type, _ETG_HeliCrew] call bis_fnc_spawnvehicle;
			_ETG_Transport_Vehicle_selection = nearestObjects [_startPos, ["air"], 100];
			_ETG_Transport_Vehicle = _ETG_Transport_Vehicle_selection select 0;
			ETG_TransportVehicle = _ETG_Transport_Vehicle;
			
		//Disable AI
			_ETG_HeliCrew setCombatMode "BLUE";
			{
				_x disableAI "AUTOTARGET";
				_x disableAI "TARGET";
				_x disableAI "SUPPRESSION";
			} forEach units _ETG_HeliCrew;
			
		//Create debug marker if wanted
			if (_Debug) then {
					_marker = createMarker ["ETG_DebugMarker",[0,0,0]];
					_marker setMarkerType "o_air";
				[_ETG_Transport_Vehicle,_marker] spawn {
					sleep 1;
					_marker = _this select 1;
					_Heli = _this select 0;
					while {alive _Heli} do {
						_marker setMarkerPos position _Heli;
					};
					deleteMarker _marker;
				};
			};
				
		//Remove weapon attachments from crew
			{removeAllPrimaryWeaponItems _x; } forEach units _ETG_HeliCrew;
				
		//Waypoint for the Helicopter
			_ETG_HeliWaypoint1 = _ETG_HeliCrew addWaypoint [_ETG_Main_Coordinates, 0];
			_ETG_HeliWaypoint1 setWaypointType "move";
			_ETG_HeliWaypoint1 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;	
		
		//sets the second waypoint
			_ETG_HeliWaypoint2 = _ETG_HeliCrew addWaypoint [_ETG_2cnd_Coordinates, 0];
			_ETG_HeliWaypoint2 setWaypointType "move";
			_ETG_HeliWaypoint2 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;	
				
		//sets the third waypoint
			_ETG_HeliWaypoint3 = _ETG_HeliCrew addWaypoint [_ETG_3rd_Coordinates, 0];
			_ETG_HeliWaypoint3 setWaypointType "move";
			_ETG_HeliWaypoint3 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;	
			
		//sets the fourth waypoint
			_ETG_HeliWaypoint4 = _ETG_HeliCrew addWaypoint [[0,0,0], 0];
			_ETG_HeliWaypoint4 setWaypointType "move";
			_ETG_HeliWaypoint4 setWaypointBehaviour "CARELESS";
			_ETG_Transport_Vehicle flyInHeight _FlyHeight;	
		
		//Wait until the heli is close to its crash point and or it is damaged to a certain point
			waitUntil {(position _ETG_Transport_Vehicle distance _ETG_3rd_Coordinates < 400) || (getDammage _ETG_Transport_Vehicle > 0.2)};
					
		//Set new waypoints
			_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 3];
			deleteWaypoint [_ETG_HeliCrew, 0];
			deleteWaypoint [_ETG_HeliCrew, 1];
			_ETG_HeliCrew setCurrentWaypoint [_ETG_HeliCrew, 2];
		
			//crash the chopper...
				_ETG_Transport_Vehicle setFuel 0;
				_ETG_Transport_Vehicle setDamage 1;

			//wait until the heli is close to the ground and delete it
				waituntil {(getPos _ETG_Transport_Vehicle select 2) < 1};
				sleep 10;
				_ETG_CrashPosition = position _ETG_Transport_Vehicle;
				_ETG_CrashRot = getDir _ETG_Transport_Vehicle;
				sleep 2;
				deleteVehicle _ETG_Transport_Vehicle;
				
				ETG_CrashPosition = _ETG_CrashPosition;
				
			//Create markers if wanted
				if (_AllowMarkers) then {
					_marker = createMarker [_ETG_CrashPosition joinString " ",_ETG_CrashPosition];
					_marker setMarkerType _MarkerType;
					[_DeletionDelay,_marker] spawn {
						sleep (_this select 0);
						deleteMarker (_this select 1);
					};		
				};
				
			//create the heli crash
				_ETG_CrashedHeli = createVehicle ["Land_Wreck_Heli_Attack_01_F",_ETG_CrashPosition,[], 0, "can_collide"];
				_ETG_CrashedHeli setDir _ETG_CrashRot;
				_ETG_CrashedHeli setPos [position _ETG_CrashedHeli select 0,position _ETG_CrashedHeli select 1, 0.1];
				_ETG_CrashedHeli setVectorUp surfaceNormal position _ETG_CrashedHeli;
				_ETG_SmokeEffect = createVehicle ["test_EmptyObjectForSmoke",position _ETG_CrashedHeli,[], 0, "can_collide"];
				_ETG_SmokeEffect attachTo [_ETG_CrashedHeli, [0.5, -2, 1] ];
				//Create 2 campfires at the crashsite for the light/fire effects
				if (_FireAtCrashSite) then {_ETG_FireEffect2 = createVehicle ["Campfire_burning_F",position _ETG_CrashedHeli,[], 1, "can_collide"]; _ETG_FireEffect1 = createVehicle ["Campfire_burning_F",position _ETG_CrashedHeli,[], 1, "can_collide"];
					_ETG_FireEffect1 setPos [position _ETG_FireEffect1 select 0, position _ETG_FireEffect1 select 1, -0.1];
					_ETG_FireEffect2 setPos [position _ETG_FireEffect2 select 0, position _ETG_FireEffect2 select 1, -0.1];
					[_ETG_FireEffect1,_ETG_FireEffect2,_DeletionDelay] spawn {
						sleep (_this select 2);
						deleteVehicle (_this select 0);
						deleteVehicle (_this select 1);
					};
				};

			//Make the heli accecible for other scripts
				ETG_CrashedHeli = _ETG_CrashedHeli;
				
			//Spawn AI if wanted
				if (_AI_Crash) then {
					_HelicrashUnits = [position _ETG_CrashedHeli, EAST, _ETG_AIUnits,[],[],[],[],[],180] call BIS_fnc_spawnGroup;
					//Add waypoint for the AI
					_HeliCrashGroupLeader = leader _HelicrashUnits;
					_HeliCrashUnitsGroup = group _HeliCrashGroupLeader;
					
					//Add a waypoint for them
					_HeliCrashUnitsGroup addWaypoint [position _ETG_CrashedHeli, 0];
					[_HeliCrashUnitsGroup, 0] setWaypointType "GUARD";
					[_HeliCrashUnitsGroup, 0] setWaypointBehaviour "AWARE";
		
						//delete AI after x hours
						[_DeletionDelay,_HelicrashUnits] spawn {
							sleep (_this select 0);
							{ deleteVehicle _x; } forEach units (_this select 1);
						};
					};	
				
			//spawn crates around the crashsite, rotate them and add loot to them/the ground
				_ETG_HeliCrashLootBox1 = _ETG_HeliCrashLootBoxes call BIS_fnc_selectRandom; 
				_ETG_HeliCrashLootBoxes1 = createVehicle [_ETG_HeliCrashLootBox1,_ETG_CrashPosition,[], _CrateSpawnRadius, "can_collide"];_ETG_HeliCrashLootBoxes1 allowDamage false; clearMagazineCargoGlobal _ETG_HeliCrashLootBoxes1;clearItemCargoGlobal _ETG_HeliCrashLootBoxes1;clearBackpackCargoGlobal _ETG_HeliCrashLootBoxes1;clearWeaponCargoGlobal _ETG_HeliCrashLootBoxes1; _ETG_HeliCrashLootBoxes1 setPos [position _ETG_HeliCrashLootBoxes1 select 0,position _ETG_HeliCrashLootBoxes1 select 1, 0.1]; _ETG_HeliCrashLootBoxes1 setVectorUp surfaceNormal position _ETG_HeliCrashLootBoxes1;
				_ETG_HeliCrashLootBox2 = _ETG_HeliCrashLootBoxes call BIS_fnc_selectRandom; 
				_ETG_HeliCrashLootBoxes2 = createVehicle [_ETG_HeliCrashLootBox2,_ETG_CrashPosition,[], _CrateSpawnRadius, "can_collide"];_ETG_HeliCrashLootBoxes2 allowDamage false; clearMagazineCargoGlobal _ETG_HeliCrashLootBoxes2;clearItemCargoGlobal _ETG_HeliCrashLootBoxes2;clearBackpackCargoGlobal _ETG_HeliCrashLootBoxes2;clearWeaponCargoGlobal _ETG_HeliCrashLootBoxes2; _ETG_HeliCrashLootBoxes2 setPos [position _ETG_HeliCrashLootBoxes2 select 0,position _ETG_HeliCrashLootBoxes2 select 1, 0.1]; _ETG_HeliCrashLootBoxes2 setVectorUp surfaceNormal position _ETG_HeliCrashLootBoxes2;
				_ETG_HeliCrashLootBox3 = _ETG_HeliCrashLootBoxes call BIS_fnc_selectRandom; 
				_ETG_HeliCrashLootBoxes3 = createVehicle [_ETG_HeliCrashLootBox3,_ETG_CrashPosition,[], _CrateSpawnRadius, "can_collide"];_ETG_HeliCrashLootBoxes3 allowDamage false; clearMagazineCargoGlobal _ETG_HeliCrashLootBoxes3;clearItemCargoGlobal _ETG_HeliCrashLootBoxes3;clearBackpackCargoGlobal _ETG_HeliCrashLootBoxes3;clearWeaponCargoGlobal _ETG_HeliCrashLootBoxes3; _ETG_HeliCrashLootBoxes3 setPos [position _ETG_HeliCrashLootBoxes3 select 0,position _ETG_HeliCrashLootBoxes3 select 1, 0.1]; _ETG_HeliCrashLootBoxes3 setVectorUp surfaceNormal position _ETG_HeliCrashLootBoxes3;
				
			//Add loot to them
				if (_LootOnGround) then {
				//Setup variables
				_WeaponCount = 0;
				_PlannedWeaponCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_WeaponCount < _PlannedWeaponCount} do {
					_WeaponCount = _WeaponCount + 1;
					_CurrentItem = _ETG_Weapons call BIS_fnc_selectRandom;
					_Ammount = 1;
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes1,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addWeaponCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_Magazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes2,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_ItemCount = 0;
				_PlannedItemCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_ItemCount < _PlannedItemCount} do {
					_ItemCount = _ItemCount + 1;
					_CurrentItem = _ETG_Items call BIS_fnc_selectRandom;
					_Ammount = 1;
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes3,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addItemCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_BackpackCount = 0;
				_PlannedBackpackCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_BackpackCount < _PlannedBackpackCount} do {
					_BackpackCount = _BackpackCount + 1;
					_CurrentItem = _ETG_Backpacks call BIS_fnc_selectRandom;
					_Ammount = 1;
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes2,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addBackpackCargoGlobal [_CurrentItem,_Ammount]	
				};
				
				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_WeaponMagazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_WeaponHolder = createVehicle ["groundweaponHolder",position _ETG_HeliCrashLootBoxes1,[], _LootSpawnRadius, "can_collide"];
					_WeaponHolder addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};

				} else {
				
				//Setup variables
				_WeaponCount = 0;
				_PlannedWeaponCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_WeaponCount < _PlannedWeaponCount} do {
					sleep 0.1;
					_WeaponCount = _WeaponCount + 1;
					_CurrentItem = _ETG_Weapons call BIS_fnc_selectRandom;
					_Ammount = 1;
					_ETG_HeliCrashLootBoxes1 addWeaponCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					sleep 0.1;
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_Magazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_ETG_HeliCrashLootBoxes2 addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_ItemCount = 0;
				_PlannedItemCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_ItemCount < _PlannedItemCount} do {
					sleep 0.1;
					_ItemCount = _ItemCount + 1;
					_CurrentItem = _ETG_Items call BIS_fnc_selectRandom;
					_Ammount = 1;
					_ETG_HeliCrashLootBoxes3 addItemCargoGlobal [_CurrentItem,_Ammount]	
				};

				//Setup variables
				_BackpackCount = 0;
				_PlannedBackpackCount = round (random _MaxItemCount / 3);

				//Add random items to the crate/ground
				while {_BackpackCount < _PlannedBackpackCount} do {
					sleep 0.1;
					_BackpackCount = _BackpackCount + 1;
					_CurrentItem = _ETG_Backpacks call BIS_fnc_selectRandom;
					_Ammount = 1;
					_ETG_HeliCrashLootBoxes2 addBackpackCargoGlobal [_CurrentItem,_Ammount]	
				};
				
				//Setup variables
				_MagazineCount = 0;
				_PlannedMagazineCount = round (random _MaxItemCount);
				
				//Add random items to the crate/ground
				while {_MagazineCount < _PlannedMagazineCount} do {
					sleep 0.1;
					_MagazineCount = _MagazineCount + 1;
					_CurrentItem = _ETG_WeaponMagazines call BIS_fnc_selectRandom;
					_Ammount = round (random _MaxAmmountOfItems);
					_ETG_HeliCrashLootBoxes1 addMagazineCargoGlobal [_CurrentItem,_Ammount]	
				};
			};	
				
				
				//Allow damage on the crates
				_ETG_HeliCrashLootBoxes1 allowDamage true;
				_ETG_HeliCrashLootBoxes2 allowDamage true;
				_ETG_HeliCrashLootBoxes3 allowDamage true;
				
				//Delete Crates at heli crashes if wanted
				if (_CratesAtCrashes) then {} else {
					deleteVehicle _ETG_HeliCrashLootBoxes1;
					deleteVehicle _ETG_HeliCrashLootBoxes1;
					deleteVehicle _ETG_HeliCrashLootBoxes1;
				};
				
			//delete heli after x hours
				[_ETG_CrashedHeli,_ETG_SmokeEffect,_ETG_HeliCrashLootBoxes1,_ETG_HeliCrashLootBoxes2,_ETG_HeliCrashLootBoxes3,_DeletionDelay] spawn {
					sleep (_this select 5);
					_ETG_CrashedHeli = _this select 0;
					{if (typeOf _x == "#particlesource") then {deleteVehicle _x}} forEach (_ETG_CrashedHeli nearObjects 5); 
					deleteVehicle (_this select 0);
					(_this select 1) setDamage 1;
					deleteVehicle (_this select 1);
					deleteVehicle (_this select 2);
					deleteVehicle (_this select 3);
					deleteVehicle (_this select 4);
				};
				
				ETG_Cargo_Drop_Mission = 0;	
			
			//start a new cargo drop / heli crash
				sleep _SleepTime; 
				_nul = execVM _ETG_ScriptPath;
		}, {} ];	
	} else {sleep _SleepTime; _nul = execVM _ETG_ScriptPath;};	
};