/*
BASE script made by Shix http://www.exilemod.com/profile/4566-shix/
this is just the base for any project so scripters do not have to figure out how to hide controlls and figure out a go back solution
Made for XM8 Apps http://www.exilemod.com/topic/9040-updated-xm8-apps/
I would strongly suggest reading these 2 BIS WIKI articles if you have never done anything like this before
https://community.bistudio.com/wiki/ctrlCreate
https://community.bistudio.com/wiki/ctrlSetPosition
*/
/////////////////////
//Config
///////////////////
_donatorMode = false;
_donors = ['76561198134905171'];
////////////////////////////////
//    Donors Cfg
////////////////////////////////

orderIDcharacters = "ESG"; //Characters to be displayed at the start of each unique order number (can be a community name abbreviation ie: ESG (Evolved Survival Gaming)
_Box1Name = "Starter";
Box1Items = [
['Exile_Item_Flag',1],
['Exile_Item_Matches',2],
['Exile_Item_CookingPot',1],
['Exile_Item_CanOpener',1],
['Exile_Item_Handsaw',1],
['Exile_Item_Grinder',1],
['Exile_Item_CampFireKit',1],
['Exile_Item_WorkBenchKit',1]
];
box1Cost = 3000;
box1DonorCost = 1000;

_Box2Name = "Supplies";
Box2Items = [
['Exile_Item_EMRE',2],
['Exile_Item_GloriousKnakworst',2],
['Exile_Item_InstantCoffee',1],
['Exile_Item_PowerDrink',1],
['Exile_Item_Beer',1],
['Exile_Item_EnergyDrink',1],
['Exile_Item_CampFireKit',1],
['Exile_Item_Matches',1],
['Exile_Item_CookingPot',1]
];
box2Cost = 5000;
box2DonorCost = 1000;

_Box3Name = "CCTV";
Box3Items = [
['Exile_Item_Codelock',2],
['Exile_Item_BaseCameraKit',6],
['Exile_Item_Laptop',1]
];
box3Cost = 25000;
box3DonorCost = 1000;

_Box4Name = "Small";
Box4Items = [
['Exile_Item_Codelock',2],
['Exile_Item_WoodDoorKit',2],
['Exile_Item_WoodFloorKit',18],
['Exile_Item_WoodFloorPortKit',1],
['Exile_Item_WoodGateKit',1],
['Exile_Item_WoodPlank',10],
['Exile_Item_WoodStairsKit',1],
['Exile_Item_WoodSupportKit',4],
['Exile_Item_WoodWallKit',16],
['Exile_Item_WorkBenchKit',1]
];
box4Cost = 50000;
box4DonorCost = 1000;

_Box5Name = "Large";
Box5Items = [
['Exile_Item_Codelock',2],
['Exile_Item_WoodDoorKit',4],
['Exile_Item_WoodFloorKit',25],
['Exile_Item_WoodGateKit',2],
['Exile_Item_WoodPlank',15],
['Exile_Item_WoodStairsKit',2],
['Exile_Item_WoodSupportKit',4],
['Exile_Item_WoodWallKit',20],
['Exile_Item_WorkBenchKit',1]
];
box5Cost = 80000;
box5DonorCost = 1000;

_Box6Name = "Upgrade";
Box6Items = [
['Exile_Item_FortificationUpgrade',10],
['Exile_Item_SafeKit',2],
['Exile_Item_CamoTentKit',4],
['Exile_Item_Foolbox',1],
['Exile_Item_PortableGeneratorKit',1],
['Exile_Item_FloodLightKit',5],
['Exile_Item_DuctTape',3]
];
box6Cost = 50000;
box6DonorCost = 1000;

if ((_donatorMode) && (getPlayerUID player in _donors)) then {
  box1Cost = box1DonorCost;
  box2Cost = box2DonorCost;
  box3Cost = box3DonorCost;
  box4Cost = box4DonorCost;
  box5Cost = box5DonorCost;
  box6Cost = box6DonorCost;
};

disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];

//set XM8 title
(_display displayCtrl 4004) ctrlSetStructuredText (parseText (format ["<t align='center' font='RobotoMedium'>eBase</t>"]));

//Hides all xm8 apps controlls then deletes them for a smooth transition
_xm8Controlls = [991,881,992,882,993,883,994,884,995,885,996,886,997,887,998,888,999,889,9910,8810,9911,8811,9912,8812];
{
    _fade = _display displayCtrl _x;
    _fade ctrlSetFade 1;
    _fade ctrlCommit 0.5;
} forEach _xm8Controlls;
{
    ctrlDelete ((findDisplay 24015) displayCtrl _x);
} forEach _xm8Controlls;
uiSleep 0.2;


_Box1Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 851];
_Box1Btn ctrlSetPosition [(7 - 3) * (0.025), (6 - 2) * (0.04)];
_Box1Btn ctrlCommit 0;
_Box1Btn ctrlSetFontHeight 0.05;
_Box1Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box1Name, box1Cost]));
_Box1Btn ctrlSetEventHandler ["ButtonClick", "[1]call fnc_preview_Load"];

_Box2Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 852];
_Box2Btn ctrlSetPosition [(14 - 3) * (0.025), (6 - 2) * (0.04)];
_Box2Btn ctrlCommit 0;
_Box2Btn ctrlSetFontHeight 0.05;
_Box2Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box2Name, box2Cost]));
_Box2Btn ctrlSetEventHandler ["ButtonClick", "[2]call fnc_preview_Load"];

_Box3Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 853];
_Box3Btn ctrlSetPosition [(7 - 3) * (0.025), (11.5 - 2) * (0.04)];
_Box3Btn ctrlCommit 0;
_Box3Btn ctrlSetFontHeight 0.05;
_Box3Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box3Name, box3Cost]));
_Box3Btn ctrlSetEventHandler ["ButtonClick", "[3]call fnc_preview_Load"];

_Box4Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 854];
_Box4Btn ctrlSetPosition [(14 - 3) * (0.025), (11.5 - 2) * (0.04)];
_Box4Btn ctrlCommit 0;
_Box4Btn ctrlSetFontHeight 0.05;
_Box4Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box4Name, box4Cost]));
_Box4Btn ctrlSetEventHandler ["ButtonClick", "[4]call fnc_preview_Load"];

_Box5Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 855];
_Box5Btn ctrlSetPosition [(7 - 3) * (0.025), (17 - 2) * (0.04)];
_Box5Btn ctrlCommit 0;
_Box5Btn ctrlSetFontHeight 0.05;
_Box5Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box5Name, box5Cost]));
_Box5Btn ctrlSetEventHandler ["ButtonClick", "[5]call fnc_preview_Load"];

_Box6Btn = _display ctrlCreate ["RscExileXM8AppButton1x1", 856];
_Box6Btn ctrlSetPosition [(14 - 3) * (0.025), (17 - 2) * (0.04)];
_Box6Btn ctrlCommit 0;
_Box6Btn ctrlSetFontHeight 0.05;
_Box6Btn ctrlSetStructuredText (parseText (format ["%1<br/><img image='\exile_assets\texture\ui\poptab_notification_ca.paa' size='1.0' shadow='true' />%2",_Box6Name, box6Cost]));
_Box6Btn ctrlSetEventHandler ["ButtonClick", "[6]call fnc_preview_Load"];


_BuyBtn = _display ctrlCreate ["RscButtonMenu", 857];
_BuyBtn ctrlSetPosition [(20.85 - 3) * (0.025),(10.5 - 2) * (0.04),0.125,1 * (0.04)];
_BuyBtn ctrlCommit 0;
_BuyBtn ctrlSetText "Buy Now";
_BuyBtn ctrlSetEventHandler ["ButtonClick", "call fnc_buyselected"];


_ItemsList = _display ctrlCreate ["RscListBox", 858];
_ItemsList ctrlSetPosition [(26.6 - 3) * (0.025),(8 - 2) * (0.04),(0.32),14 * (0.04)];
_ItemsList ctrlCommit 0;
_ItemsList ctrlSetText "Cancel";
_ItemsList ctrlSetEventHandler ["ButtonClick", "call fnc_goBack"];

_boxselected = 0;



fnc_preview_Load = {
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_boxNum = _this select 0;
lbClear 858;
  switch (_boxNum) do {
    case (1): {
      {
        boxselected = 1;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box1Items;
    };
    case (2): {
      {
        boxselected = 2;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box2Items;
    };
    case (3): {
      {
        boxselected = 3;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box3Items;
    };
    case (4): {
      {
        boxselected = 4;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box4Items;
    };
    case (5): {
      {
        boxselected = 5;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box5Items;
    };
    case (6): {
      {
        boxselected = 6;
        _item = _x select 0;
        _quantity = _x select 1;
        _itemDispName = getText (configfile >> "CfgMagazines" >> _item >> "displayName");
        (_display displayCtrl 858) lbAdd Format["%1: %2",_itemDispName,_quantity];
      } forEach Box6Items;
    };
  };
};

_ranNumArr = ['1','2','3','4','5','6','7','8','9','0'];
a1 = _ranNumArr call BIS_fnc_selectRandom;
a2 = _ranNumArr call BIS_fnc_selectRandom;
a3 = _ranNumArr call BIS_fnc_selectRandom;
a4 = _ranNumArr call BIS_fnc_selectRandom;
a5 = _ranNumArr call BIS_fnc_selectRandom;
a6 = _ranNumArr call BIS_fnc_selectRandom;
a7 = _ranNumArr call BIS_fnc_selectRandom;

_userrating = _display ctrlCreate ["RscStructuredText", 1230];
_userrating ctrlSetPosition [(26.6 - 3) * (0.025),(6 - 2) * (0.04),(0.32),1.7 * (0.04)];
_userrating ctrlCommit 0;
_userrating ctrlSetStructuredText (parseText (format ["<t align='center'size='0.8'> Customer Ident: %2-%3%4<br/>(%1)",name player, orderIDcharacters, a1, a2]));
_userrating ctrlSetBackgroundColor [0.11,0.106,0.125,1];

fnc_deliverynotify = {
  uiSleep 20;
  hint format["Dear Customer: %1, Your order is complete and your package has been delivered right to your not-yet-existent front door - Buy it, build it, love it! - spearheadgaming.net",name player];
};

fnc_ordernotify = {
  hint format["Dear Customer: %1, thanks for your order! your order number is '%2-%3%4%5%6%7%8' - spearheadgaming.net",name player, orderIDcharacters, a1, a2, a3, a4, a5, a6, a6, a7, a8];
};

fnc_buybox1 = {
  if (ExileClientPlayerMoney > box1Cost) then {
  _newPoptabs = ExileClientPlayerMoney - box1Cost;
  ENIGMA_UpdateStats = [player,_newPoptabs];
  publicVariableServer "ENIGMA_UpdateStats";
call fnc_ordernotify;
  _playerPOS = getPOSATL player;
  _crate = createVehicle ["Exile_Container_StorageCrate", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  _smokeshell = createVehicle ["SmokeShellRed", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  clearMagazineCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  clearItemCargoGlobal _crate;
  clearBackpackCargoGlobal _crate;
  {
      _crate addItemCargoGlobal [(_x select 0), (_x select 1)];
  } forEach Box1Items;

  _cratePOS = getPOSATL _crate;
  _parachute = "B_Parachute_02_F" createVehicle (_cratePOS);
  _parachute setPos _cratePOS;
  _crate attachTo [_parachute, [0, 0, 0.1] ];
  _smokeshell attachTo [_crate, [0, 0, 0.1] ];
[] spawn { call fnc_deliverynotify; };
  } else {
    (findDisplay 24015) closeDisplay 0;
  hint format["Dear Custom: %1, Your order has been declined due to insufficient funds",name player];
  };
};

fnc_buybox2 = {
  if (ExileClientPlayerMoney > box2Cost) then {
  _newPoptabs = ExileClientPlayerMoney - box2Cost;
  ENIGMA_UpdateStats = [player,_newPoptabs];
  publicVariableServer "ENIGMA_UpdateStats";
call fnc_ordernotify;
  _playerPOS = getPOSATL player;
  _crate = createVehicle ["Exile_Container_StorageCrate", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  _smokeshell = createVehicle ["SmokeShellRed", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  clearMagazineCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  clearItemCargoGlobal _crate;
  clearBackpackCargoGlobal _crate;
  {
      _crate addItemCargoGlobal [(_x select 0), (_x select 1)];
  } forEach Box2Items;

  _cratePOS = getPOSATL _crate;
  _parachute = "B_Parachute_02_F" createVehicle (_cratePOS);
  _parachute setPos _cratePOS;
  _crate attachTo [_parachute, [0, 0, 0.1] ];
  _smokeshell attachTo [_crate, [0, 0, 0.1] ];
[] spawn { call fnc_deliverynotify; };
  } else {
    (findDisplay 24015) closeDisplay 0;
  hint format["Dear Custom: %1, Your order has been declined due to insufficient funds",name player];
  };
};

fnc_buybox3 = {
  if (ExileClientPlayerMoney > box2Cost) then {
  _newPoptabs = ExileClientPlayerMoney - box3Cost;
  ENIGMA_UpdateStats = [player,_newPoptabs];
  publicVariableServer "ENIGMA_UpdateStats";
call fnc_ordernotify;
  _playerPOS = getPOSATL player;
  _crate = createVehicle ["Exile_Container_StorageCrate", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  _smokeshell = createVehicle ["SmokeShellRed", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  clearMagazineCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  clearItemCargoGlobal _crate;
  clearBackpackCargoGlobal _crate;
  {
      _crate addItemCargoGlobal [(_x select 0), (_x select 1)];
  } forEach Box3Items;

  _cratePOS = getPOSATL _crate;
  _parachute = "B_Parachute_02_F" createVehicle (_cratePOS);
  _parachute setPos _cratePOS;
  _crate attachTo [_parachute, [0, 0, 0.1] ];
  _smokeshell attachTo [_crate, [0, 0, 0.1] ];
[] spawn { call fnc_deliverynotify; };
  } else {
    (findDisplay 24015) closeDisplay 0;
  hint format["Dear Custom: %1, Your order has been declined due to insufficient funds",name player];
  };
};

fnc_buybox4 = {
  if (ExileClientPlayerMoney > box4Cost) then {
  _newPoptabs = ExileClientPlayerMoney - box4Cost;
  ENIGMA_UpdateStats = [player,_newPoptabs];
  publicVariableServer "ENIGMA_UpdateStats";
call fnc_ordernotify;
  _playerPOS = getPOSATL player;
  _crate = createVehicle ["Exile_Container_StorageCrate", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  _smokeshell = createVehicle ["SmokeShellRed", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  clearMagazineCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  clearItemCargoGlobal _crate;
  clearBackpackCargoGlobal _crate;
  {
      _crate addItemCargoGlobal [(_x select 0), (_x select 1)];
  } forEach Box4Items;

  _cratePOS = getPOSATL _crate;
  _parachute = "B_Parachute_02_F" createVehicle (_cratePOS);
  _parachute setPos _cratePOS;
  _crate attachTo [_parachute, [0, 0, 0.1] ];
  _smokeshell attachTo [_crate, [0, 0, 0.1] ];
[] spawn { call fnc_deliverynotify; };
  } else {
    (findDisplay 24015) closeDisplay 0;
  hint format["Dear Custom: %1, Your order has been declined due to insufficient funds",name player];
  };
};

fnc_buybox5 = {
  if (ExileClientPlayerMoney > box5cost) then {
  _newPoptabs = ExileClientPlayerMoney - box5Cost;
  ENIGMA_UpdateStats = [player,_newPoptabs];
  publicVariableServer "ENIGMA_UpdateStats";
    call fnc_ordernotify;
  _playerPOS = getPOSATL player;
  _crate = createVehicle ["Exile_Container_StorageCrate", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  _smokeshell = createVehicle ["SmokeShellRed", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  clearMagazineCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  clearItemCargoGlobal _crate;
  clearBackpackCargoGlobal _crate;
  {
      _crate addItemCargoGlobal [(_x select 0), (_x select 1)];
  } forEach Box5Items;
  _cratePOS = getPOSATL _crate;
  _parachute = "B_Parachute_02_F" createVehicle (_cratePOS);
  _parachute setPos _cratePOS;
  _crate attachTo [_parachute, [0, 0, 0.1] ];
[] spawn { call fnc_deliverynotify; };
  } else {
    (findDisplay 24015) closeDisplay 0;
  hint format["Dear Custom: %1, Your order has been declined due to insufficient funds",name player];
  };
};

fnc_buybox6 = {
  if (ExileClientPlayerMoney > box6cost) then {
  _newPoptabs = ExileClientPlayerMoney - box6Cost;
  ENIGMA_UpdateStats = [player,_newPoptabs];
  publicVariableServer "ENIGMA_UpdateStats";
call fnc_ordernotify;
  _playerPOS = getPOSATL player;
  _crate = createVehicle ["Exile_Container_StorageCrate", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  _smokeshell = createVehicle ["SmokeShellRed", [(_playerPOS select 0),(_playerPOS select 1),((_playerPOS select 2) +100)], [], 0, "FLY"];
  clearMagazineCargoGlobal _crate;
  clearWeaponCargoGlobal _crate;
  clearItemCargoGlobal _crate;
  clearBackpackCargoGlobal _crate;
  {
      _crate addItemCargoGlobal [(_x select 0), (_x select 1)];
  } forEach Box6Items;

  _cratePOS = getPOSATL _crate;
  _parachute = "B_Parachute_02_F" createVehicle (_cratePOS);
  _parachute setPos _cratePOS;
  _crate attachTo [_parachute, [0, 0, 0.1] ];
  _smokeshell attachTo [_crate, [0, 0, 0.1] ];
[] spawn { call fnc_deliverynotify; };
  } else {
    (findDisplay 24015) closeDisplay 0;
  hint format["Dear Custom: %1, Your order has been declined due to insufficient funds",name player];
  };
};

fnc_buyselected = {
  switch (boxselected) do {
    case (1): {call fnc_buybox1;};
    case (2): {call fnc_buybox2;};
    case (3): {call fnc_buybox3;};
    case (4): {call fnc_buybox4;};
    case (5): {call fnc_buybox5;};
    case (6): {call fnc_buybox6;};
  };
};

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Created the go back button and add the button click event handeler to it
//Note you do need to add all Idds for all the controlls you have created to the _Ctrls array

_GoBackBtn = _display ctrlCreate ["RscButtonMenu", 1116];
_GoBackBtn ctrlSetPosition [(21.1 - 3) * (0.025),(13 - 2) * (0.04),4.5 * (0.025),1 * (0.04)];
_GoBackBtn ctrlCommit 0;
_GoBackBtn ctrlSetText "Cancel";
_GoBackBtn ctrlSetEventHandler ["ButtonClick", "call fnc_goBack"];


fnc_goBack = {
  _display = uiNameSpace getVariable ["RscExileXM8", displayNull];
  _Ctrls = [1116,851,852,853,854,855,856,857,858];
  {
      _ctrl = (_display displayCtrl _x);
      _ctrl ctrlSetFade 1;
      _ctrl ctrlCommit 0.25;
      ctrlEnable [_x, false];
  } forEach _Ctrls;
  execVM "xm8Apps\XM8Apps_Init.sqf";
  uiSleep 1;
  {
    ctrlDelete ((findDisplay 24015) displayCtrl _x);
  } forEach _Ctrls;
};
