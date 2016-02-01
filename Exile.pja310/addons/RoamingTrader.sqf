/**     ROAMING TRADER by JohnO **/
////////////////////////////////////////////////////////////////////////////////////   
//
//      Trader clothing and vehicle handling added by second_coming (WIP)
//
//      Change the waypoints to match the map you are running
//      and if using a map other than Chernarus or Altis alter the map settings
//      Vehicle classname and some of the clothing are not standard Arma 3 items
//      If you aren't using RHS and TRYK you will need to change them
//
////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////
//		Further edited by Cannon for use in the Spearhead Gaming Exile	
////////////////////////////////////////////////////////////////////////////////////
 
// http://www.exilemod.com/profile/60-second_coming/

diag_log format['[travellingtrader] Started'];
if (!isServer) exitWith {};
 
_world = (toLower worldName);
 
// Default to Chernarus
_spawnCenter = [1600.553,8259.8887,0];
_max = 7500;
_wayPointOne = getMarkerPos "NEAF Aircraft Traders";
_wayPointTwo = getMarkerPos "Stary Traders";
_wayPointThree = getMarkerPos "Otmel Traders";
_wayPointFour = getMarkerPos "Bash Traders";


if (_world isEqualTo 'altis') then
{
        _spawnCenter = [1600.553,8259.8887,0];
        _max = 9000;
        _wayPointOne = getMarkerPos "AlmyraTraders";
        _wayPointTwo = getMarkerPos "TraderCityMarker";
        _wayPointThree = getMarkerPos "NorthZarosTraders";
        _wayPointFour = getMarkerPos "TraderZoneSilderas";
};

// Create 4 completely random waypoints for the trader to patrol
/** Use these if you want specific positions EG _wayPointOne = getMarkerPos "Marker1"; you will need to place markers in the editor where you want **/

_wayPointOne = getMarkerPos "AlNabqSpawnZone";
_wayPointTwo = getMarkerPos "AirportTrader";
_wayPointThree = getMarkerPos "ArmanazSpawnZone";
_wayPointFour = getMarkerPos "CoastalTrader";

_min = 1500; // minimum distance from the center position (Number) in meters
_mindist = 20; // minimum distance from the nearest object (Number) in meters, ie. create waypoint this distance away from anything within x meters..
_water = 0; // water mode 0: cannot be in water , 1: can either be in water or not , 2: must be in water
_shoremode = 0; // 0: does not have to be at a shore , 1: must be at a shore
 
_possiblePosStart = [_wayPointOne,100,300,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; //Use this if you want a completely random spawn location
 
// Create the trader and ensure he doest react to gunfire or being shot at.
 
_group = createGroup resistance;
_group setCombatMode "BLUE";
 
"Exile_Trader_Armory" createUnit [_possiblePosStart, _group, "trader = this; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this disableAI 'SUPPRESSION'; "];
trader allowDamage false;
removeGoggles trader;
trader forceAddUniform "U_IG_Guerilla3_1";
trader addVest "V_TacVest_blk_POLICE";
trader addBackpack "B_FieldPack_oli";
trader addHeadgear "H_Cap_blk";
trader setCaptive true;

 
// Spawn Traders Vehicle
_vehicleObject = createVehicle ["CUP_B_LR_Transport_GB_D", _wayPointOne, [], 0, "CAN_COLLIDE"];
clearBackpackCargoGlobal _vehicleObject;
clearItemCargoGlobal _vehicleObject;
clearMagazineCargoGlobal _vehicleObject;
clearWeaponCargoGlobal _vehicleObject;
_vehicleObject setVariable ["ExileIsPersistent", false];
_vehicleObject setFuel 1;
 
diag_log format['[travellingtrader] Vehicle spawned @ %1',_possiblePosStart];
_vehicleObject addEventHandler ["HandleDamage", {
_amountOfDamage = 0;
_amountOfDamage
}];
 
trader assignasdriver _vehicleObject;
[trader] orderGetin true;
//_vehicleObject lockDriver true;
 




 
//_wayPointOne = [_spawnCenter,_min,_max,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; //Remove or comment this line if you are using markers
 
_wp1 = _group addWaypoint [_wayPointOne, 0];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointBehaviour "SAFE";
_wp1 setWaypointspeed "LIMITED";
 
//_wayPointTwo = [_spawnCenter,_min,_max,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; //Remove or comment this line if you are using markers
 
_wp2 = _group addWaypoint [_wayPointTwo, 0];
_wp2 setWaypointType "MOVE";
_wp2 setWaypointBehaviour "SAFE";
_wp2 setWaypointspeed "LIMITED";
 
//_wayPointThree = [_spawnCenter,_min,_max,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; //Remove or comment this line if you are using markers
 
_wp3 = _group addWaypoint [_wayPointThree, 0];
_wp3 setWaypointType "MOVE";
_wp3 setWaypointBehaviour "SAFE";
_wp3 setWaypointspeed "LIMITED";
 
//_wayPointFour = [_spawnCenter,_min,_max,_mindist,_water,20,_shoremode] call BIS_fnc_findSafePos; //Remove or comment this line if you are using markers
 
_wp4 = _group addWaypoint [_wayPointFour, 0];
_wp4 setWaypointType "MOVE";
_wp4 setWaypointBehaviour "SAFE";
_wp4 setWaypointspeed "LIMITED";
 
// Last waypoint is set to cycle so the trader will cycle between all 4 way points constantly.
 
_wp5 = _group addWaypoint [_wayPointOne, 0];
_wp5 setWaypointType "CYCLE";
_wp5 setWaypointBehaviour "SAFE";
_wp5 setWaypointspeed "LIMITED";
 
_traderPos = position trader;
_mk = createMarker ["TraderLocation",_traderPos];
"TraderLocation" setMarkerType "mil_warning";
"TraderLocation" setMarkerText "Dave";
 
// Make trader will stand still when players near him.
while {true} do
        {
                _pos = position _vehicleObject;
                _mk setMarkerPos _pos;
                _requiredMin = 2;
                _nearPlayers = (count (_pos nearEntities [['Man'],15]));
               
                if(trader in _vehicleObject) then
                {                        
                        _requiredMin = 1;
                };
               
                if (_nearPlayers >= _requiredMin) then
                {
                        [trader] orderGetin false;
                        uiSleep 0.5;
                        _vehicleObject setVehicleLock "LOCKED";
                        _vehicleObject setFuel 0;
                        trader action ["salute", trader];              
                        trader disableAI "MOVE";
                        uiSleep 5;
                }
                else
                {      
                        trader assignasdriver _vehicleObject;
                        [trader] orderGetin true;
                        _vehicleObject setFuel 1;
                        _vehicleObject setVehicleLock "UNLOCKED";
                        uiSleep 0.5;
                        trader moveInDriver _vehicleObject;
                        trader enableAI "MOVE";
                };
               
                uiSleep 5;
                if(!Alive trader)exitWith {};
        };