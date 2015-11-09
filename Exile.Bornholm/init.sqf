[] execVM "IgiLoad\IgiLoadInit.sqf";
null =[] execVM "Briefing.sqf"; // Briefing and Rules
[] spawn {
	private ["_opticsAllowed","_specialisedOptics"];
	_opticsAllowed = ["B_recon_TL_F","B_recon_medic_F","B_recon_LAT_F","B_recon_exp_F","B_recon_JTAC_F","B_recon_F","B_recon_M_F","B_spotter_F"];
	_specialisedOptics = ["optic_Nightstalker","optic_tws","optic_tws_mg"];
	while {TRUE} do {
		if (({_x in (primaryWeaponItems player)} count _specialisedOptics) > 0) then {
			if (({player isKindOf _x} count _opticsAllowed) < 1) then {
				{player removePrimaryWeaponItem  _x;} count _specialisedOptics;
				if (player isKindOf "B_sniper_F") then {
					if ((dayTime > 19.5) || (dayTime < 4.5)) then {
						player addPrimaryWeaponItem "optic_NVS";
					} else {
						player addPrimaryWeaponItem "optic_SOS";
					};
				} else {
					if ((dayTime > 19.5) || (dayTime < 4.5)) then {
						player addPrimaryWeaponItem "optic_NVS";
					} else {
						player addPrimaryWeaponItem "optic_Hamr";
					};
				};
			};
		};
		uiSleep 4;
	};
};
