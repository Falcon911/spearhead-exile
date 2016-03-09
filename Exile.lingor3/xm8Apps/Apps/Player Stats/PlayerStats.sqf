/*
Player stats script made by Shix http://www.exilemod.com/profile/4566-shix/
Allows players to view their stats while in game through the xm8
Made for XM8 Apps http://www.exilemod.com/topic/9040-updated-xm8-apps/
*/
disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];

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

//set XM8 title
(_display displayCtrl 4004) ctrlSetStructuredText (parseText (format ["<t align='center' font='RobotoMedium'>Player Stats</t>"]));

//pull players stats
_playerMoney = ExileClientPlayerMoney;
_playerRespect = ExileClientPlayerScore;
_playerKills = ExileClientPlayerKills;
_playerDeaths = ExileClientPlayerDeaths;
_playerClassName = ExileClientClanName;

_playerKD = _playerKills/_playerDeaths;

_playerPrimary = primaryWeapon player;
_playerPrimaryDispName = getText (configfile >> "CfgWeapons" >> _playerPrimary >> "DisplayName");
_playerPrimaryPic = getText (configfile >> "CfgWeapons" >> _playerPrimary >> "Picture");

_stat1 = _display ctrlCreate ["RscText", 861];
_stat1 ctrlSetPosition [(9.9 - 3) * (0.025), (6.5 - 2) * (0.04), 2.75 * (0.12), 2.75 * (0.02)];
_stat1 ctrlCommit 0;
_stat1 ctrlSetFontHeight 0.05;
_stat1 ctrlSetText Format["Player Name: %1", name player];

_stat2 = _display ctrlCreate ["RscText", 862];
_stat2 ctrlSetPosition [(9.9 - 3) * (0.025), (8.5 - 2) * (0.04), 2.75 * (0.12), 2.75 * (0.02)];
_stat2 ctrlCommit 0;
_stat2 ctrlSetFontHeight 0.05;
_stat2 ctrlSetText Format["Player Money: %1",_playerMoney];

_stat3 = _display ctrlCreate ["RscText", 863];
_stat3 ctrlSetPosition [(9.9 - 3) * (0.025), (10.5 - 2) * (0.04), 2.75 * (0.12), 2.75 * (0.02)];
_stat3 ctrlCommit 0;
_stat3 ctrlSetFontHeight 0.05;
_stat3 ctrlSetText Format["Player Respect: %1",_playerRespect];

_stat4 = _display ctrlCreate ["RscText", 864];
_stat4 ctrlSetPosition [(9.9 - 3) * (0.025), (12.5 - 2) * (0.04), 2.75 * (0.12), 2.75 * (0.02)];
_stat4 ctrlCommit 0;
_stat4 ctrlSetFontHeight 0.05;
_stat4 ctrlSetText Format["Player Kills: %1",_playerKills];

_stat5 = _display ctrlCreate ["RscText", 865];
_stat5 ctrlSetPosition [(9.9 - 3) * (0.025), (14.5 - 2) * (0.04), 2.75 * (0.12), 2.75 * (0.02)];
_stat5 ctrlCommit 0;
_stat5 ctrlSetFontHeight 0.05;
_stat5 ctrlSetText Format["Player Deaths: %1",_playerDeaths];

_stat6 = _display ctrlCreate ["RscText", 866];
_stat6 ctrlSetPosition [(29 - 3) * (0.025), (6 - 2) * (0.04), 2.75 * (0.12), 2.75 * (0.06)];
_stat6 ctrlCommit 0;
_stat6 ctrlSetFontHeight 0.2;
_stat6 ctrlSetText Format["KD"];

_stat7 = _display ctrlCreate ["RscStructuredText", 867];
_stat7 ctrlSetPosition [(29.5 - 3) * (0.025), (10 - 2) * (0.04), 1.19 * (0.12), 2.75 * (0.021)];
_stat7 ctrlCommit 0;
_stat7 ctrlSetFontHeight 0.2;
_stat7 ctrlSetStructuredText parseText (format["<t size='1.8' align='center'>%1</t>",_playerKD]);

//Created the go back button and add the button click event handeler to it
//Note you do need to add all Idds for all the controlls you have created to the _Ctrls array
_GoBackBtn = _display ctrlCreate ["RscButtonMenu", 1116];
_GoBackBtn ctrlSetPosition [(32 - 3) * (0.025),(20 - 2) * (0.04),6 * (0.025),1 * (0.04)];
_GoBackBtn ctrlCommit 0;
_GoBackBtn ctrlSetText "Go Back";
_GoBackBtn ctrlSetEventHandler ["ButtonClick", "call fnc_goBack"];

fnc_goBack = {
  _display = uiNameSpace getVariable ["RscExileXM8", displayNull];
  _Ctrls = [1116,861,862,863,864,865,866,867];
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
