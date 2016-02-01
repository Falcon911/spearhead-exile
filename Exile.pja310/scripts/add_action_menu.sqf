waitUntil{!isNull (findDisplay 46)};

//Add action menu for admin (replace xxxxxxxxxxxxxx with your ID)
if ((getPlayerUID player) in [
	
			
			"76561198037794465", //Bayley
			"76561198051303789",  // Sage
			"76561198025627975", //Dodds
			"76561198133523234",  // 7temp 
			"76561197974470549",  //Jerkin Merkin
			"76561198068372718", // Ford
			"76561198036388020", //lewis
			"76561198087140410", //thomas
			"76561198057838365", //degone
			"76561198085693651",  //Moore
			"76561198027365826",  //Cannon				
			"76561198065631549",  //falcon911
			"76561198069335401", //DoubleA
			"76561198052079567", //kingheavey
			"76561197991198861" //optima
]) then {
	systemChat "Adding action menu...";
	removeAllActions player;
   
	waitUntil {!isNull player};
	while {true} do {
	   waitUntil {sleep 1.5; alive player};
		player addaction ["Admin Hunt", "scripts\adminhunt.sqf","",-99,false,true,"",""];
	   waitUntil {sleep 1.5; !alive player};
	};
};