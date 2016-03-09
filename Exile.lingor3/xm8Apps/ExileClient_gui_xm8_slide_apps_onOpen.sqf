/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */

private["_display","_health","_popTabsValue","_popTabs","_respectValue","_respect", "_serverInfo", "_newControl"];
disableSerialization;

_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
_health = _display displayCtrl 4057;
_health ctrlSetStructuredText parseText (format ["<t color='#00b2cd' font='OrbitronLight' size='1.6' valign='middle' align='center' shadow='0'><br/><br/><br/><t font='OrbitronMedium' size='3.5' color='#ffffff'>%1%2</t><br/>HEALTH</t>", round ((1 - damage player) * 100), "%"]);
_popTabsValue = ExileClientPlayerMoney;
if (_popTabsValue > 999) then
{
	_popTabsValue = format ["%1k", floor (_popTabsValue / 1000)];
};
_popTabs = _display displayCtrl 4058;
_popTabs ctrlSetTooltip format["%1", ExileClientPlayerMoney];
_popTabs ctrlSetStructuredText parseText (format ["<t color='#00b2cd' font='OrbitronLight' size='1.6' valign='middle' align='center' shadow='0'><br/><br/><br/><t font='OrbitronMedium' size='3.5' color='#ffffff'>%1</t><br/>POP TABS</t>", _popTabsValue]);
_respectValue = ExileClientPlayerScore;
if (_respectValue > 999) then
{
	_respectValue = format ["%1k", floor (_respectValue / 1000)];
};
_respect = _display displayCtrl 4059;
_respect ctrlSetTooltip format["%1", ExileClientPlayerScore];
_respect ctrlSetStructuredText parseText (format ["<t color='#00b2cd' font='OrbitronLight' size='1.6' valign='middle' align='center' shadow='0'><br/><br/><br/><t font='OrbitronMedium' size='3.5' color='#ffffff'>%1</t><br/>RESPECT</t>", _respectValue]);

/*
You can now set what buuton you would like to replace
1 = server info button
2 = Bounties Button
3 = Clan Button
*/
_btnToUse = 1;

_AppsLogo = "xm8Apps\images\xm8logofix_ca.paa";

if(_btnToUse == 1)then{
// clear server info button text
//Will set the text on the server info button to "XM8 Apps"
_serverInfo = _display displayCtrl 1107;
_serverInfo ctrlSetText "";
_serverInfo ctrlSetFade 1;
_serverInfo ctrlCommit 0;

_newIcon = _display ctrlCreate ["RscPicture", 9897, _display displayCtrl 4040];
_newIcon ctrlSetPosition [(24.25 - 3) * (0.025), (15.5 - 2) * (0.04), 2.75 * (0.04), 2.75 * (0.04)];
_newIcon ctrlCommit 0.01;
_newIcon ctrlSetText _AppsLogo;

_newControl = _display ctrlCreate ["RscExileXM8AppButton1x1", 9898, _display displayCtrl 4040];
_newControl ctrlSetPosition [(23.5 - 3) * (0.025), (15 - 2) * (0.04)];
_newControl ctrlCommit 0.01;
_newControl ctrlSetEventHandler ["ButtonClick", "execVM'xm8Apps\XM8Apps_Init.sqf';"];
_newControl ctrlSetStructuredText (parseText (format ["XM8 Apps"]));
};

if(_btnToUse == 2)then{
// clear server info button text
//Will set the text on the server info button to "XM8 Apps"
_serverInfo = _display displayCtrl 1103;
_serverInfo ctrlSetText "";
_serverInfo ctrlSetFade 1;
_serverInfo ctrlCommit 0;

_newIcon = _display ctrlCreate ["RscPicture", 9897, _display displayCtrl 4040];
_newIcon ctrlSetPosition [(17.9 - 3) * (0.025), (15.5 - 2) * (0.04), 2.75 * (0.04), 2.75 * (0.04)];
_newIcon ctrlCommit 0.01;
_newIcon ctrlSetText _AppsLogo;

_newControl = _display ctrlCreate ["RscExileXM8AppButton1x1", 9898, _display displayCtrl 4040];
_newControl ctrlSetPosition [(17 - 3) * (0.025), (15 - 2) * (0.04)];
_newControl ctrlCommit 0.01;
_newControl ctrlSetEventHandler ["ButtonClick", "execVM'xm8Apps\XM8Apps_Init.sqf';"];
_newControl ctrlSetStructuredText (parseText (format ["XM8 Apps"]));
};

if(_btnToUse == 3)then{
// clear server info button text
//Will set the text on the server info button to "XM8 Apps"
_serverInfo = _display displayCtrl 1105;
_serverInfo ctrlSetText "";
_serverInfo ctrlSetFade 1;
_serverInfo ctrlCommit 0;

_newIcon = _display ctrlCreate ["RscPicture", 9897, _display displayCtrl 4040];
_newIcon ctrlSetPosition [(30.8 - 3) * (0.025), (4.5 - 2) * (0.04), 2.75 * (0.04), 2.75 * (0.04)];
_newIcon ctrlCommit 0.01;
_newIcon ctrlSetText _AppsLogo;

_newControl = _display ctrlCreate ["RscExileXM8AppButton1x1", 9898, _display displayCtrl 4040];
_newControl ctrlSetPosition [(30 - 3) * (0.025), (4 - 2) * (0.04)];
_newControl ctrlCommit 0.01;
_newControl ctrlSetEventHandler ["ButtonClick", "execVM'xm8Apps\XM8Apps_Init.sqf';"];
_newControl ctrlSetStructuredText (parseText (format ["XM8 Apps"]));
};
