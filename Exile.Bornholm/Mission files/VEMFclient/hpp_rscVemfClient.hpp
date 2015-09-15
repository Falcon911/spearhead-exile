////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by IT07, v1.063, #Vyqovu)
////////////////////////////////////////////////////////

class bg: IGUIBack
{
	type = 0;
	text = "";
	colorText[] = {0,0,0,0};
	font = "PuristaMedium";
	sizeEx = 0;
	shadow = 0;
	style = 128;

	idc = 2200;
	x = 0.3125 * safezoneW + safezoneX;
	y = 0.9 * safezoneH + safezoneY;
	w = 0.4375 * safezoneW;
	h = 0.04 * safezoneH;
	colorBackground[] = {0.071,0.078,0.094,0.5};
};
class txtTag: RscText
{
	shadow = 0;
	deletable = 0;
	fade = 0;
	sizeEx = 0.05;
	font = "OrbitronMedium";
	style = 2;
	access = 0;
	type = 0;
	fixedWidth = 0;
	colorShadow[] = {0,0,0,0.5};
	lineSpacing = 1;
	tooltipColorText[] = {1,1,1,0.9};
	tooltipColorBox[] = {1,1,1,0.2};
	tooltipColorShade[] = {0,0,0,0.7};

	idc = 1001;
	text = "[VEMF]"; //--- ToDo: Localize;
	x = 0.25 * safezoneW + safezoneX;
	y = 0.9 * safezoneH + safezoneY;
	w = 0.0625 * safezoneW;
	h = 0.04 * safezoneH;
	colorText[] = {0.22,0.745,0.882,1};
	colorBackground[] = {0.071,0.078,0.094,1};
};
class txt: RscText
{
	deletable = 0;
	shadow = 0;
	access = 0;
	sizeEx = 0.035;
	font = "OrbitronLight";
	style = 0;
	fade = 0;
	type = 0;
	fixedWidth = 0;
	colorShadow[] = {0,0,0,0.5};
	lineSpacing = 1;
	tooltipColorText[] = {1,1,1,0.9};
	tooltipColorBox[] = {1,1,1,0.2};
	tooltipColorShade[] = {0,0,0,0.7};
	text = "";

	idc = 1000;
	x = 0.325 * safezoneW + safezoneX;
	y = 0.9 * safezoneH + safezoneY;
	w = 0.425 * safezoneW;
	h = 0.04 * safezoneH;
	colorText[] = {1,1,1,0.9};
	colorBackground[] = {0,0,0,0};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
