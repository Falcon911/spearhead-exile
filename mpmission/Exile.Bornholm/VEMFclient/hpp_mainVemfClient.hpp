class vemfClientMsg
{
	idd = 2991;
	fadeIn = 0.2;
	fadeOut = 1;
	duration = 99999;
	onLoad = "uiNamespace setVariable ['vemfClientDsp', _this select 0]";
	movingEnable = 0;
	class controls
	{
		class IGUIBack {};
		class RscText {};
		#include "hpp_rscVemfClient.hpp"
	};
};