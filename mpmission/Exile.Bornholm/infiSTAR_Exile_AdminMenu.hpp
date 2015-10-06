/*
	Antihack & AdminTools - ChristianLorenzen - www.infiSTAR.de-License: (CC)
	#700
*/
class RscListBox_infiSTAR {
	access=0;
	type=5;
	style=0;
	font="PuristaLight";
	sizeEx=0.03;
	rowHeight=0;
	colorText[]={1,1,1,1};
	colorScrollbar[]={1,1,1,1};
	colorSelect[]={0,0,0,1};
	colorSelect2[]={1,0.5,0,1};
	colorSelectBackground[]={0.6,0.6,0.6,1};
	colorSelectBackground2[]={0.2,0.2,0.2,1};
	colorBackground[]={0,0,0,0.6};
	maxHistoryDelay=1.0;
	soundSelect[]={"",0.1,1};
	period=1;
	autoScrollSpeed=-1;
	autoScrollDelay=5;
	autoScrollRewind=0;
	arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
	arrowFull="#(argb,8,8,3)color(1,1,1,1)";
	shadow=0;
	colorDisabled[]={1,1,1,0.25};
	border=false;
	borderSize=0;
	class ScrollBar
	{
		arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
		arrowFull="#(argb,8,8,3)color(1,1,1,1)";
		border="#(argb,8,8,3)color(1,1,1,1)";
		color[]={1,1,1,0.6};
		colorActive[]={1,1,1,1};
		colorDisabled[]={1,1,1,0.3};
		thumb="#(argb,8,8,3)color(1,1,1,1)";
	};
	class ListScrollBar:ScrollBar
	{
		color[]={1,1,1,0.6};
		colorActive[]={1,1,1,1};
		colorDisabled[]={1,1,1,0.3};
		thumb="#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty="#(argb,8,8,3)color(1,1,1,1)";
		arrowFull="#(argb,8,8,3)color(1,1,1,1)";
		border="#(argb,8,8,3)color(1,1,1,1)";
		shadow=0;
	};
};
class RscText_infiSTAR {
	access=0;
	idc=-1;
	type=0;
	style=0;
	linespacing=1;
	colorBackground[]={0,0,0,0};
	colorText[]={0.84,0.07,0,1};
	shadow=1;
	font="PuristaBold";
	sizeex=0.0400;
	fixedWidth=0;
};
class RscEdit_infiSTAR {
	access=0;
	type=2;
	style=0;
	colorBackground[]={0,0,0,0};
	colorText[]={1,1,1,1};
	colorSelection[]={1,1,1,0.25};
	colorDisabled[]={1,1,1,0};
	font="PuristaBold";
	sizeEx=0.04;
	autocomplete="";
	text="";
	size=0.2;
	shadow=0;
}
class RscButton_infiSTAR {
	access=0;
	idc=-1;
	type=1;
	style=0;
	text="";
	action="";
	colorText[]={1,1,1,0.9};
	colorDisabled[]={0.6,0.1,0.3,0};
	colorBackground[]={0,0,0,0.8};
	colorBackgroundDisabled[]={0,0.0,0};
	colorBackgroundActive[]={0.15,0.35,0.55,0.7};
	colorFocused[]={0.58,0.05,0,0.7};
	colorShadow[]={0.023529,0,0.0313725,1};
	colorBorder[]={0.023529,0,0.0313725,1};
	soundEnter[]={"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",0.09,1};
	soundPush[]={"\A3\ui_f\data\sound\RscButtonMenu\soundPush",0.09,1};
	soundClick[]={"\A3\ui_f\data\sound\RscButtonMenu\soundClick",0.09,1};
	soundEscape[]={"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",0.09,1};
	shadow=0;
	font="PuristaMedium";
	sizeEx=0.02921;
	offsetX=0.003;
	offsetY=0.003;
	offsetPressedX=0.002;
	offsetPressedY=0.002;
	borderSize=0;
};
class RscHTML_infiSTAR {
	colorBackground[]={0,0,0,0.25};
	colorText[] = {0.8784, 0.8471, 0.651, 1.0};
	colorLink[] = {0.8784, 0.8471, 0.651, 1.0};
	colorBold[] = {0.8784, 0.8471, 0.651, 1.0};
	colorPicture[] = {0.8784, 0.8471, 0.651, 1.0};
	colorPictureLink[] = {0.8784, 0.8471, 0.651, 1.0};
	colorPictureSelected[] = {0.8784, 0.8471, 0.651, 1.0};
	colorPictureBorder[] = {0.8784, 0.8471, 0.651, 1.0};
	filename="";
	colorLinkActive[] = {1, 0.537, 0, 1};
	sizeEx = 0.03921;
	type = 9;
	style=0;
	prevPage = "\ca\ui\data\arrow_left_ca.paa";
	nextPage = "\ca\ui\data\arrow_right_ca.paa";
	shadow = 2;
	class H1 {
		font = "PuristaLight";
		fontBold = "PuristaBold";
		sizeEx = 0.03921 * 6;
		align = "left";
	};
	class H2 {
		font = "PuristaLight";
		fontBold = "PuristaBold";
		sizeEx = 0.03921 * 5;
		align = "left";
	};
	class H3 {
		font = "PuristaLight";
		fontBold = "PuristaBold";
		sizeEx = 0.03921 * 4;
		align = "left";
	};
	class H4 {
		font = "PuristaLight";
		fontBold = "PuristaBold";
		sizeEx = 0.03921 * 3;
		align = "left";
	};
	class H5 {
		font = "PuristaLight";
		fontBold = "PuristaBold";
		sizeEx = 0.03921 * 2;
		align = "left";
	};
	class H6 {
		font = "PuristaLight";
		fontBold = "PuristaBold";
		sizeEx = 0.03921;
		align = "left";
	};
	class P {
		font = "PuristaLight";
		fontBold = "PuristaBold";
		sizeEx = 0.02921;
		align = "left";
	};
};
class infiSTAR_AdminMenu
{
	idd=-1338;
	onLoad = "{if(isNil _x)then{(findDisplay 46) closeDisplay 0;closeDialog 0;};} forEach ['AH_HackLogArray','AH_SurvLogArray','AH_AdmiLogArray'];";
	movingenable=false;
	controls[]=
	{
		infi_TXT2,
		infi_BTN10,
		infi_BTN11,
		infi_BTN12,
		infi_LIST1500,
		infi_LIST1501,
		infi_BTN20,
		infi_BTN21,
		infi_BTN23,
		infi_BTN24,
		infi_EDIT100,
		infi_BTN36,
		infi_BTN37,
		infi_BTN38,
		infi_HTML_1
	};
	class infi_LIST1500: RscListBox_infiSTAR
	{
		idc = 1500;
		x = 4.99852e-005 * safezoneW + safezoneX;
		y = 0.0617197 * safezoneH + safezoneY;
		w = 0.189063 * safezoneW;
		h = 0.938333 * safezoneH;
	};
	class infi_LIST1501: RscListBox_infiSTAR
	{
		idc = 1501;
		x = 0.188975 * safezoneW + safezoneX;
		y = 0.0617197 * safezoneH + safezoneY;
		w = 0.344271 * safezoneW;
		h = 0.945999 * safezoneH;
	};
	class infi_EDIT100: RscEdit_infiSTAR
	{
		idc = 100;
		text = "Search";
		x = 0.1964 * safezoneW + safezoneX;
		y = 0.125933 * safezoneH + safezoneY;
		w = 0.326563 * safezoneW;
		h = 0.044 * safezoneH;
	};
	class infi_TXT2: RscText_infiSTAR
	{
		idc = 2;
		text = "infiSTAR.de";
		x = -5.31323e-005 * safezoneW + safezoneX;
		y = -7.50085e-005 * safezoneH + safezoneY;
		w = 1 * safezoneW;
		h = 0.0341667 * safezoneH;
		colorText[] = {1,1,1,0.9};
		colorBackground[] = {0.56,0.04,0.04,1};
	};
	class infi_HTML_1: RscHTML_infiSTAR
	{
		idc = 1;
		x = 0.535 * safezoneW + safezoneX;
		y = 0.06 * safezoneH + safezoneY;
		w = 0.32 * safezoneW;
		h = 0.25 * safezoneH;
		colorBackground[] = {0,0,0,0};
		onLoad = "if(!isNil'HTML_LOAD_URL')then{(_this select 0) htmlLoad HTML_LOAD_URL;};";
	};
	class infi_BTN10: RscButton_infiSTAR
	{
		idc = 10;
		text = "Alphabet";
		x = 0.005 + safezoneX;
		y = 0.0379694 * safezoneH + safezoneY;
		w = 0.06 * safezoneW;
		h = 0.02 * safezoneH;
		action="SortRangePlease = nil;SortAlphaPlease = true;SortGroupsPlease=nil;[] call fnc_fill_infiSTAR_Player;[] call fnc_setFocus;";
	};
	class infi_BTN11: RscButton_infiSTAR
	{
		idc = 11;
		text = "Groups";
		x = 0.01 + safezoneX + (0.06 * safezoneW);
		y = 0.0379694 * safezoneH + safezoneY;
		w = 0.06 * safezoneW;
		h = 0.02 * safezoneH;
		action="SortAlphaPlease = nil;SortRangePlease = nil;SortGroupsPlease = true;[] call fnc_fill_infiSTAR_Player;[] call fnc_setFocus;";
	};
	class infi_BTN12: RscButton_infiSTAR
	{
		idc = 12;
		text = "Range";
		x = 0.015 + safezoneX + (0.06 * safezoneW)*2;
		y = 0.0379694 * safezoneH + safezoneY;
		w = 0.06 * safezoneW;
		h = 0.02 * safezoneH;
		action="SortAlphaPlease = nil;SortRangePlease = true;SortGroupsPlease=nil;[] call fnc_fill_infiSTAR_Player;[] call fnc_setFocus;";
	};
	class infi_BTN20: RscButton_infiSTAR
	{
		idc = 20;
		default = "true";
		text = "MainMenu";
		x = 0.202072 * safezoneW + safezoneX;
		y = 0.0379694 * safezoneH + safezoneY;
		w = 0.0625001 * safezoneW;
		h = 0.02 * safezoneH;
	};
	class infi_BTN21: RscButton_infiSTAR
	{
		idc = 21;
		text = "SpawnMenu";
		x = 0.287975 * safezoneW + safezoneX;
		y = 0.0379694 * safezoneH + safezoneY;
		w = 0.0625001 * safezoneW;
		h = 0.02 * safezoneH;
	};
	class infi_BTN23: RscButton_infiSTAR
	{
		idc = 23;
		text = "AHLog";
		x = 0.373981 * safezoneW + safezoneX;
		y = 0.0379694 * safezoneH + safezoneY;
		w = 0.0625001 * safezoneW;
		h = 0.02 * safezoneH;
	};
	class infi_BTN24: RscButton_infiSTAR
	{
		idc = 24;
		text = "AdminLog";
		x = 0.459884 * safezoneW + safezoneX;
		y = 0.0379694 * safezoneH + safezoneY;
		w = 0.0625001 * safezoneW;
		h = 0.02 * safezoneH;
	};
	class infi_BTN36: RscButton_infiSTAR
	{
		idc = 36;
		text = "Items";
		x = 0.219294 * safezoneW + safezoneX;
		y = 0.0819514 * safezoneH + safezoneY;
		w = 0.0916667 * safezoneW;
		h = 0.0329999 * safezoneH;
	};
	class infi_BTN37: RscButton_infiSTAR
	{
		idc = 37;
		text = "Vehicles";
		x = 0.316644 * safezoneW + safezoneX;
		y = 0.0819514 * safezoneH + safezoneY;
		w = 0.0916667 * safezoneW;
		h = 0.0329999 * safezoneH;
	};
	class infi_BTN38: RscButton_infiSTAR
	{
		idc = 38;
		text = "Misc";
		x = 0.414097 * safezoneW + safezoneX;
		y = 0.0819514 * safezoneH + safezoneY;
		w = 0.0916667 * safezoneW;
		h = 0.0329999 * safezoneH;
	};
};