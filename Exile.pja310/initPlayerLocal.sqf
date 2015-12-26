///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////

////
//[] execVM "addons\statusBar\statusbar.sqf"; 
////
#include "initServer.sqf"

if (!hasInterface || isServer) exitWith {};


if (!isDedicated and hasInterface) then 
{           
        call compileFinal preprocessFileLineNumbers "addons\statusBar\statusbar.sqf";
};

///////////////////// Your Traders Go Here!////////////////////////////////////

///////////////////////////////////////////////////////////////////////////
// Coastal Traders(Done)
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
// Coastal Hardware Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader11 = [
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [1585.15,8256.69,-2.38419e-007],
	334.091
    
]
call ExileClient_object_trader_create;
_officeTrader11 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader11 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
///////////////////////////////////////////////////////////////////////////
// Coastal Fast Food Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader10 = [
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [1579.94,8248.73,0],
	151.818
    
]
call ExileClient_object_trader_create;
_officeTrader10 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader10 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Coastal Armory Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader9 = [
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [1622.33,8276.11,-2.38419e-007],
	333.182
    
]
call ExileClient_object_trader_create;
_officeTrader9 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader9 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Coastal Equipment Trader (Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [1632.03,8281.24,-2.38419e-007],
	152.727
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Coastal Specops Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [1617.15,8268.19,-2.38419e-007],
	152.727
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Coastal Office Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader1 = [
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [1639.87,8280.23,-2.38419e-007],
	151.818
]
call ExileClient_object_trader_create;
_officeTrader1 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader1 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];


///////////////////////////////////////////////////////////////////////////
// Coastal Waste Dump Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [1638.69,8258.93,-2.38419e-007],
	335
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Coastal Boat Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Boat",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [1609.21,8268.12,-2.38419e-007],
	152.727
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Coastal Boat Customs Trader(Done)
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_BoatCustoms",
    "GreekHead_A3_07",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [1604.99,8264.52,-2.38419e-007],
	152.727
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Coastal Vehicle Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [1590.74,8258.67,0],
	158.182
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Coastal Vehicle Customs Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
	"Exile_Trader_VehicleCustoms",
	"WhiteHead_11",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
	[1595.47,8259.3,-2.38419e-007],
	152.727
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Mansoura Traders(Done)
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
// Mansoura Vehicle Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader8 = [
	"Exile_Trader_Vehicle",
	"WhiteHead_11",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
	[6616.67,17289.2,0],
	136.364
]
call ExileClient_object_trader_create;
_officeTrader8 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader8 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
///////////////////////////////////////////////////////////////////////////
// Mansoura Hardware Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader7 = [
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [6607.16,17283.3,0],
	99.5454
    
]
call ExileClient_object_trader_create;
_officeTrader7 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader7 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Karsu Traders(Done)
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
// Karsu Vehicle Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader6 = [
	"Exile_Trader_Vehicle",
	"WhiteHead_11",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
	[13975,12514.7,0],
	184.091
]
call ExileClient_object_trader_create;
_officeTrader6 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader6 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Karsu Hardware Trader(Done)
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [13953.9,12518.1,0],
	184.091
    
]
call ExileClient_object_trader_create;


///////////////////////////////////////////////////////////////////////////
// Airport Traders(Done)
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
// Airport Hardware Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [19605.3,19200.9,0],
	266.818
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Airport Equipment Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader12 = [
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [19646.2,19242.2,-2.38419e-007],
	183.636
]
call ExileClient_object_trader_create;
_officeTrader12 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader12 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Airport Food Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader5 = [
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [19605.7,19254.3,-2.38419e-007],
	269.091
    
]
call ExileClient_object_trader_create;
_officeTrader5 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader5 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
///////////////////////////////////////////////////////////////////////////
// Airport Office Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader = [
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [19645.6,19220.4,-2.38419e-007],
	218.182
]
call ExileClient_object_trader_create;
_officeTrader addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Airport Armory Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader4 = [
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [19651.4,19237.4,-2.38419e-007],
	269.091
    
]
call ExileClient_object_trader_create;
_officeTrader4 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader4 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Airport SpecOps Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [19651.4,19227.7,-2.38419e-007],
	269.091
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Airport Vehicle Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [19604.8,19232.1,-2.38419e-007],
	270
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Airport Vehicle Customs Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
"Exile_Trader_VehicleCustoms",
   "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
   [19638,19213.4,-2.38419e-007],
   358.182
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Airport Aircraft Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Aircraft",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [19604.7,19223.8,-2.38419e-007],
	270
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Airport Aircraft Custom Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [19637.6,19242.1,-2.38419e-007],
	180
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Airport WasteDump(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [19592.5,19276.6,-2.38419e-007],
	180.909
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Deserted Traders(Done)
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////
// Deserted Hardware Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [17791.2,2160.24,-2.38419e-007],
	353.182
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Deserted Equipment Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader13 = [
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [17815,2160.44,-2.38419e-007],
	290.909
]
call ExileClient_object_trader_create;
_officeTrader13 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader13 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Deserted Food Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader3 = [
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [17795.4,2200.92,0],
	258.636
    
]
call ExileClient_object_trader_create;
_officeTrader3 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader3 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
///////////////////////////////////////////////////////////////////////////
// Deserted Office Trader(Done)
///////////////////////////////////////////////////////////////////////////

_officeTrader14 = [
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [17780.6,2203.94,0],
	97.2727
]
call ExileClient_object_trader_create;
_officeTrader14 addAction ["<t color='#FFFFFF'>Buy Scratchie(200,-)</t>", { ["buy",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];
_officeTrader14 addAction ["<t color='#c72651'>Get Prize!</t>", { ["get",ExileClientSessionId, player, ""] remoteExecCall ["ExileServer_lottery_network_request", 2]; }];

///////////////////////////////////////////////////////////////////////////
// Deserted Armory Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [17811.8,2165.88,0],
	249.091
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Deserted SpecOps Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [17805.4,2158.68,-2.38419e-007],
	0
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Deserted Vehicle Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [17785.8,2210.91,0],
	184.545
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Deserted Aircraft Trader(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Aircraft",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [17792.8,2209.95,0],
	239.546
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Deserted WasteDump(Done)
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [17797.5,2158.1,-2.38419e-007],
	218.636
]
call ExileClient_object_trader_create;

//////////////////////////////////////////////End of Traders//////////////////////////////////////////////////////////
