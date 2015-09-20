if (hasInterface) then
{
	uiNamespace setVariable ["vemfClientMsgQeue", []];
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
};
