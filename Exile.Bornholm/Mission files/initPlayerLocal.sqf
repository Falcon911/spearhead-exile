///////////////////////////////////////////////////////////////////////////////
// Static Objects
///////////////////////////////////////////////////////////////////////////////
#include "initServer.sqf"
[] execVM "addons\statusBar\statusbar.sqf"; 
if (!hasInterface || isServer) exitWith {};

///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////


[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [3053.75,5494.08,0.13],
    155
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [3072.28,5471.63,0.13],
    200
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [3043.85,5473.85,0.13],
   64
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [3046.85,5482.77,0.13],
    136
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [3045.87,5468.56,0.13],
    25
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [3075.01,5470.06,5.22029],
   305
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [3134.22,5496.63,0.011858],
    201.818
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [3058.73,5455.82,0.0202436],
    155.909
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Aircraft Customs Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [3098.49,5436.49,0.0731802],
    229.545
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Vehicle Trader
///////////////////////////////////////////////////////////////////////////


[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [3088.54,5484.08,0],
    25
]
call ExileClient_object_trader_create;




///////////////////////////////////////////////////////////////////////////
// Vehicle Customs Trader
///////////////////////////////////////////////////////////////////////////
[
"Exile_Trader_VehicleCustoms",
   "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
   [3102.81,5478.08,0],
  25
]
call ExileClient_object_trader_create;



///////////////////////////////////////  Country Trader //////////////////////////

[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [12760.2,8752.5,0.113708],
    250
    
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [12756.9,8744.07,0.113708],
    69.5455
    
]
call ExileClient_object_trader_create;


[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [12768.7,8726.97,0.143708],
   248.636
    
]
call ExileClient_object_trader_create;


[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [12762.2,8729.78,0.163708],
    71
]
call ExileClient_object_trader_create;


[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [12763.8,8741.38,0.113708],
    250
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [12755,8751.44,0.113708],
   69
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [12735.1,8751.1,0],
    53
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_Aircraft",
    "WhiteHead_17",
    ["LHD_krajPaluby"],
    [12773.3,8718.5,0],
    71
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_AircraftCustoms",
    "GreekHead_A3_07",
    ["HubStandingUC_idle1", "HubStandingUC_idle2", "HubStandingUC_idle3", "HubStandingUC_move1", "HubStandingUC_move2"],
    [12765.5,8715.98,0],
    245
]
call ExileClient_object_trader_create;

[
    "Exile_Trader_Vehicle",
    "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
    [12762.9,8761.63,0],
    90
]
call ExileClient_object_trader_create;

[
"Exile_Trader_VehicleCustoms",
   "WhiteHead_11",
    ["AidlPercMstpSnonWnonDnon_G01", "AidlPercMstpSnonWnonDnon_G02", "AidlPercMstpSnonWnonDnon_G03", "AidlPercMstpSnonWnonDnon_G04", "AidlPercMstpSnonWnonDnon_G05", "AidlPercMstpSnonWnonDnon_G06"],
   [12765.1,8755.14,0],
  90
]
call ExileClient_object_trader_create;



























///////////////////////////////////////////////////////////////////////////
// Hardware Trader
///////////////////////////////////////////////////////////////////////////


[
    "Exile_Trader_Hardware",
    "WhiteHead_17",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [6546.14,17285.6,0],
    212
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Food",
    "GreekHead_A3_01",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [6539.88,17287.6,0],
    209
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Armory Trader
///////////////////////////////////////////////////////////////////////////

[
    "Exile_Trader_Armory",
    "PersianHead_A3_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [6518.97,17296.9,0.272461],
  200
    
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Equipment Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Equipment",
    "WhiteHead_19",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [6521.74,17296,0],
    191
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Specops Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_SpecialOperations",
    "AfricanHead_02",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [6555.94,17283.6,0],
    216
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Office Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Office",
    "GreekHead_A3_04",
    ["HubBriefing_scratch", "HubBriefing_stretch", "HubBriefing_think", "HubBriefing_lookAround1", "HubBriefing_lookAround2"],
    [6565.45,17285.9,0.503546],
   217
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Waste Dump Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_WasteDump",
    "GreekHead_A3_01",
    ["HubStandingUA_move1", "HubStandingUA_move2", "HubStandingUA_idle1", "HubStandingUA_idle2", "HubStandingUA_idle3"],
    [6508.67,17319.9,0],
    218
]
call ExileClient_object_trader_create;

///////////////////////////////////////////////////////////////////////////
// Fast Food Trader
///////////////////////////////////////////////////////////////////////////
[
    "Exile_Trader_Boat",
    "GreekHead_A3_01",
    ["HubStanding_idle1", "HubStanding_idle2", "HubStanding_idle3"],
    [6444.24,17332,0.12],
    91
    
]
call ExileClient_object_trader_create;





