/*
Info page script made by Shix http://www.exilemod.com/profile/4566-shix/
Allow admins to display any info they would like to players
Made for XM8 Apps http://www.exilemod.com/topic/9040-updated-xm8-apps/
*/
/////////////////////
//CONFIG
////////////////////
/*
Set what text you want on each line. I do not suggest going more than 63 characters per line
these are all common colors found in Exile and can be seen here http://www.exilemod.com/topic/8879-exilemod-colors/
color key
1 = Red
2 = Pink
3 = Grey
4 = White
5 = Dark Blue
6 = Dark Grey
7 = Green
8 = Yellow
9 = Light Blue
*/
_TextColor = 4;

_line1Text = "More rules are in the Rules page on the map (Upper Left)";
_line2Text = "TS: ts.Spearheadgaming.net";


/////////////////////
//CONFIG
////////////////////

disableSerialization;
_display = uiNameSpace getVariable ["RscExileXM8", displayNull];

//set XM8 title
(_display displayCtrl 4004) ctrlSetStructuredText (parseText (format ["<t align='center' font='RobotoMedium'>Info</t>"]));

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

//Created a structured text box
_StructuredTextBox = _display ctrlCreate ["RscStructuredText", 1120];
_StructuredTextBox ctrlSetPosition [(7 - 3) * (0.025), (6 - 2) * (0.04),(0.8),(0.54)];
_StructuredTextBox ctrlCommit 0;
_StructuredTextBox ctrlSetBackgroundColor [1,1,1,0.05];
_StructuredTextBox ctrlSetStructuredText parseText (format["<t align='left'>%1<br/>%2<br/>%3<br/>%4<br/>%5<br/>%6<br/>%7<br/>%8<br/>%9<br/>%10<br/>%11<br/>%12<br/>%13</t>",_line1Text,_line2Text,_line3Text,_line4Text,_line5Text,_line6Text,_line7Text,_line8Text,_line9Text,_line10Text,_line11Text,_line12Text,_line13Text]);
switch (_TextColor) do {
    case (1): {
        _StructuredTextBox ctrlSetTextColor [0.886,0.255,0.259,1];
    };
    case (2): {
        _StructuredTextBox ctrlSetTextColor [0.78,0.149,0.318,1];
    };
    case (3): {
        _StructuredTextBox ctrlSetTextColor [0.133,0.145,0.149,1];
    };
    case (4): {
        _StructuredTextBox ctrlSetTextColor [0.984,0.988,0.996,1];
    };
    case (5): {
        _StructuredTextBox ctrlSetTextColor [0.075,0.09,0.106,1];
    };
    case (6): {
        _StructuredTextBox ctrlSetTextColor [0.153,0.153,0.176,1];
    };
    case (7): {
        _StructuredTextBox ctrlSetTextColor [0.039,0.875,0.231,1];
    };
    case (8): {
        _StructuredTextBox ctrlSetTextColor [1,0.706,0.094,1];
    };
    case (9): {
        _StructuredTextBox ctrlSetTextColor [0.247,0.831,0.988,1];
    };
};


//Created the go back button and add the button click event handeler to it
//Note you do need to add all Idds for all the controlls you have created to the _Ctrls array
_GoBackBtn = _display ctrlCreate ["RscButtonMenu", 1116];
_GoBackBtn ctrlSetPosition [(32 - 3) * (0.025),(20 - 2) * (0.04),6 * (0.025),1 * (0.04)];
_GoBackBtn ctrlCommit 0;
_GoBackBtn ctrlSetText "Go Back";
_GoBackBtn ctrlSetEventHandler ["ButtonClick", "call fnc_goBack"];

fnc_goBack = {
  _display = uiNameSpace getVariable ["RscExileXM8", displayNull];
  _Ctrls = [1120,1119,1112,1114,1116];
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
