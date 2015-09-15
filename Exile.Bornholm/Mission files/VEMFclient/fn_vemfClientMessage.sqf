/*
	Author: IT07

	Description:
	shows VEMF messages

	Params:
	_this select 0: STRING - the message to display

	Returns:
	nothing
*/

_txt = toUpper ([_this, 0, "", [""]] call BIS_fnc_param);
if not(_txt isEqualTo "") then
{
	disableSerialization;
	_dsp = uiNamespace getVariable "vemfClientDsp";
	_show =
	{
		private ["_txt","_ctrl"];
		_ctrl = _this select 0;
		_txt = _this select 1;
		for "_g" from 1 to (count _txt) do
		{
			if isNull(findDisplay 49) then { playSound"ReadOutClick" };
			_ctrl ctrlSetText (_txt select [0, _g]);
			uiSleep 0.07;
		};
		uiSleep 10;
		for "_i" from (count _txt) to 0 step -1 do
		{
			if isNull(findDisplay 49) then { playSound"ReadOutHideClick1" };
			_ctrl ctrlSetText (_txt select [0, _i]);
			uiSleep 0.03;
		};
		_qeue = uiNamespace getVariable "vemfClientMsgQeue";
		if not isNil"_qeue" then
		{
			if (typeName _qeue isEqualTo "ARRAY") then
			{
				_index = _qeue find _txt;
				if (_index > -1) then
				{
					_qeue deleteAt _index;
				};
			};
		};
		(["vemfClientMsg"] call BIS_fnc_rscLayer) cutFadeOut 1;
	};
	if isNil"_dsp" then
	{
		(["vemfClientMsg"] call BIS_fnc_rscLayer) cutRsc["vemfClientMsg", "PLAIN", 0, true];
		_dsp = uiNamespace getVariable "vemfClientDsp";
	};
	if not isNil"_dsp" then
	{
		_qeue = uiNamespace getVariable "vemfClientMsgQeue";
		if not isNil"_qeue" then
		{
			if (typeName _qeue isEqualTo "ARRAY") then
			{
				_qeue pushBack _txt;
				if not(isNull _dsp) then { waitUntil { uiSleep 2; isNull _dsp; (_qeue select 0) isEqualTo _txt } };
				(["vemfClientMsg"] call BIS_fnc_rscLayer) cutRsc["vemfClientMsg", "PLAIN", 0, true];
				_dsp = uiNamespace getVariable "vemfClientDsp";
				_ctrl = _dsp displayCtrl 1000;
				[_ctrl, _txt] call _show;
			};
		};
	};
};
