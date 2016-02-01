private ["_pname","_marker","_msgstr"];

_pname = name player;

_msgstr = format["Hunting the Admin<br/>
<t size='1.0' color='#668CFF'>%1</t> <br/>
Has gone crazy!<br/>
Go find him and kill him.<br/>
Look at his position on the map.<br/>
For a nice prize!<br/>",_pname];

GlobalAdminHint = [_msgstr]; 
publicVariable "GlobalAdminHint";

systemChat "Let's hunt admin...";

_Marker = createMarker [_pname, position player];
_Marker setMarkerColor "ColorGreen";
_Marker setMarkerShape "ICON";
_Marker setMarkerType "o_inf";
_Marker setMarkerSize [1,1];

while {alive player} do
{
_Marker setMarkerPos [(getPosATL player select 0) + (200 * sin floor(random 360)), (getPosATL player select 1) + (200 * cos floor(random 360)), 0];
sleep 30;
};

if (getMarkerColor _Marker != "")then{
	deleteMarker _Marker;
}; 

_msgstr = format["Admin<br/>
<t size='1.0' color='#668CFF'>%1</t><br/>
Has died!<br/>
Your prize will arrive shortly.<br/>
Congrats!<br/>",_pname];

GlobalAdminHint = [_msgstr]; 
publicVariable "GlobalAdminHint";

