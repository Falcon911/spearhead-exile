/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_player","_itemClassName","_itemInformation","_itemCategory","_itemType","_added","_compatibleWeaponItems"];
_player = _this select 0;
_itemClassName = toLower (_this select 1); 
_itemInformation = [_itemClassName] call BIS_fnc_itemType;
_itemCategory = _itemInformation select 0;
_itemType = _itemInformation select 1;
diag_log (format["_itemType %1",_itemType]);
_added = false;
if (_itemCategory isEqualTo "Magazine") then
{
	{
		if !(_x isEqualTo "") then
		{
			switch (_forEachIndex) do
			{
				case 0: 
				{ 
					if ((primaryWeaponMagazine _player) isEqualTo []) then 
					{ 
						_compatibleWeaponItems = _x call ExileClient_util_gear_getCompatibleWeaponItems;
						if (_itemClassName in _compatibleWeaponItems) exitWith
						{	
							_player addPrimaryWeaponItem _itemClassName; 
							_added = true;
						};
					}; 
				};
				case 1: 
				{ 
					if ((secondaryWeaponMagazine _player) isEqualTo []) then 
					{ 
						_compatibleWeaponItems = _x call ExileClient_util_gear_getCompatibleWeaponItems;
						if (_itemClassName in _compatibleWeaponItems) exitWith
						{	
							_player addSecondaryWeaponItem _itemClassName; 
							_added = true;
						};
					}; 
				};
				case 2: 
				{ 
					if ((handgunMagazine _player) isEqualTo []) then 
					{ 
						_compatibleWeaponItems = _x call ExileClient_util_gear_getCompatibleWeaponItems;
						if (_itemClassName in _compatibleWeaponItems) exitWith
						{	
							_player addHandgunItem _itemClassName; 
							_added = true;
						};
					}; 
				};
			};
		};
	}
	forEach [primaryWeapon _player, secondaryWeapon _player, handgunWeapon _player];
}
else 
{
	switch (_itemType) do 
	{
        case "Launcher",
		case "MissileLauncher",
		case "GrenadeLauncher", 
		case "AssaultRifle", 
		case "Rifle", 
		case "SniperRifle", 
		case "SubmachineGun", 
		case "MachineGun", 
		case "Handgun", 
		case "LaserDesignator", 
		case "Throw",
		case "Binocular": 
		{
			_player addWeaponGlobal _itemClassName;	 
			_added = true;
		};
		case "GPS", 
		case "Map", 
		case "Radio", 
		case "UAVTerminal", 
		case "Watch", 
		case "Compass", 
		case "NVGoggles", 
		case "Glasses": 
		{
			_player linkItem _itemClassName;
			_added = true;
		};
		case "Headgear": 	{ _player addHeadgear _itemClassName; _added = true; }; 
		case "Backpack": 	{ _player addBackpackGlobal _itemClassName; _added = true; }; 
		case "Uniform": 	{ _player forceAddUniform _itemClassName; _added = true; }; 
		case "Vest": 		{ _player addVest _itemClassName; _added = true; }; 
		case "AccessorySights", 
		case "AccessoryPointer", 
		case "AccessoryMuzzle", 
		case "AccessoryBipod": 
		{
			{
				if !(_x isEqualTo "") then
				{
					_compatibleWeaponItems = _x call ExileClient_util_gear_getCompatibleWeaponItems;
					if (_itemClassName in _compatibleWeaponItems) exitWith
					{	
						switch (_forEachIndex) do
						{
							case 0: { _player addPrimaryWeaponItem _itemClassName; _added = true; }; 
							case 1: { _player addSecondaryWeaponItem _itemClassName; _added = true; }; 
							case 2: { _player addHandgunItem _itemClassName; _added = true; }; 
						};
					};
				};
			}
			forEach [primaryWeapon _player, secondaryWeapon _player, handgunWeapon _player];
		};
	};
};
_added