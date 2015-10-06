if (hasInterface) then
{
	uiNamespace setVariable ["vemfClientMsgQeue", []];
	// custom addPublicVariableEventHandler. Those bloody BE filters.....
	[] spawn
	{
		while {true} do
		{
			waitUntil { uiSleep 0.05; not isNil"VEMFChatMsg" };
			if (typeName VEMFChatMsg isEqualTo "ARRAY") then
			{
				_data = +[VEMFChatMsg];
				VEMFChatMsg = nil;
				_data = _data select 0;
				[_data] spawn
				{
					_data = _this select 0;
					_mode = [_data, 1, "corrupted", [""]] call BIS_fnc_param;
					if not(_mode isEqualTo "corrupted") then
					{
						_msg = [_data, 0, "fail", [""]] call BIS_fnc_param;
						if not (_msg isEqualTo "fail") then
						{
							switch _mode do
							{
								case "sys":
								{
									systemChat _msg;
								};
								default
								{
									[_msg] spawn VEMF_fnc_vemfClientMessage;
								};
							};
						};
					};
				};
			};
		};
	};
	/*
	"VEMFChatMsg" addPublicVariableEventHandler
	{
		_data = _this select 1;
		_msg = _data select 0;
		switch (_data select 1) do
		{
			case "sys":
			{
				systemChat _msg;
			};
			default
			{
				[_msg] spawn VEMF_fnc_vemfClientMessage;
			};
		};
	};
	*/
};
