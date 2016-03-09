uiSleep 10;
if (!hasInterface) exitWith {};

waitUntil {!isNil "ExileClientLoadedIn"};
 // Waits for Exile to finish up

player createDiarySubject ["Rules", "Server Rules"];
player createDiarySubject ["ts3", "Website"];
player createDiarySubject ["officers", "Server Admins"];
player createDiarySubject ["infos", "Useful Info"];
player createDiarySubject ["infos2", "Exile Faq"];
player createDiarySubject ["infos3", "More Info"];

    player createDiaryRecord ["officers",
            [
                "Server Admins",
                                "
                                <br/>Falcon911
                                <br/>Moore
                                <br/>Cannon
                                <br/>Zheky
								<br/>AustinHale
                                <br/>KingHeavy
                                <br/>Sage
								<br/>Optima
								<br/>De Gone
								<br/>Lewis
								<br/>DoubleA
								<br/>SniperNoSniping
								<br/>7=Temp
								<br/>
                                "
            ]

];

    player createDiaryRecord ["Rules",
            [
                "Server Rules",
                
				"
				<br/>No Building AT ALL within 100m of ANY In-game building/towns.We will delete your flag if found!!!</p>

				<br/>No trolling.</p>

				<br/>No crying in sidechat</p>

				<br/>No Building within the Blue Circles</p>
				
				<br/>No Camping, Stealing or Shooting within any Blue Circle </p>

				<br/>No base kamikaze with aircraft or tow/sling stealing in Blue Circles</p>

				<br/>Report any glitches or greifing on TS or post proof to Forums. Rewards for finding Glitches or Hackers!!!!</p>

				<br/>Glitching, exploiting, and hacking will get you on a long vacation!</p>
				
				<br/>VOIP spamming will get you banned</p>
				
				<br/>Territory Payement are due every 7 days</p>
				
				<br/>Vehicles not used in 3 days will be deleted</p>
				
				<br/>Any objectes outside of your territory will be delted every 3 days</p>

				<br/>Vehicles left unattended in the safezone will be unlocked upon reboot!</p>
				"
            ]
];
	
	player createDiaryRecord ["Rules",
			[
				"Rules for Compensations",
				
				"				
				<br/>Comps will only happen in case of:</p>

				<br/>Server breakdown.</p>

				<br/>Restarts with no warning.</p>

				<br/>Hacker attacks.</p>

				<br/>Admin mistakes.</p>

				<br/>To be eligeble for comp, you must be able to show some kind of proof, whether it being video or pictures.</p>
				"
			]
];

    player createDiaryRecord ["ts3",
            [
                "Our Website",
                                "
                                <br/>Visit our website at the following address!
                                <br/>
                                <br/>www.spearheadgaming.net
                                <br/>
                                <br/>We've have our own TS3 server!
                                <br/>
                                <br/>You can join the teamspeak server at the following addresses!
                                <br/>
                                <br/>ts.spearheadgaming.net
								<br/>
								<br/>Takes money to run the server. Please donate!!
								<br/>https://spearheadgaming.net/donate
                                "
            ]

];

    player createDiaryRecord ["infos",
            [
                "Server Keybinds",
                                "
                                <br/>
                                <br/>This server has keys setup to do different things.
                                <br/>
                                <br/>5 - For Earplugs
                                <br/>
                                <br/>6 - Bring up XM8 Communication Portal, Hit X to turn on.
                                <br/>
                                <br/>N - NVG's if you have them
                                <br/>
                                <br/>V - While sprinting allows jumping.
								<br/>
								<br/>Custome Key 1 = lock/unlock vehicles (normally U key) 
                                <br/>
                                <br/>Build or Consume - Open your inventory and double click on the item
                                "
            ]

];

  
    player createDiaryRecord ["infos2",
    [
                "Hints and Tips",
                                "
                                <br/>
                                <br/><font size='18'>A3Exile</font>
                                
                                <br/>* At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.
                                
                                <br/>* When picking a base location, it is best advised to pick a place that is out of the way and not so obvious.
                                
                                <br/>* If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the escape menu, chances are if you search an area of a few hundred meters, you will find something.
                                
                                <br/>* Always be on the lookout for nightvision. they can spawn in the ammo crates, and there are pairs scattered throughout Bornholm. You can also purchase them from the traders.
                                
                                <br/>* When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.
                                
                                <br/>* There are very aggressive AI characters that spawn with most missions and will protect the mission objectives with deadly force, be aware of them.
								
								<br/>* For Missles and Rockets. Purchase straight into Vehicles. DO NOT try and purchase to Self. YOU WILL LOSE YOUR MONEY!!!!!
								
								<br/>* Pay attention to the Admin team and the announcements.  If you lose property because you didn't pay attention you can only blame yourself!
                                "
    ]
    
];

    player createDiaryRecord ["infos3",
    [
                "About Exile",
                                "
                                <br/>
                                <br/>Exile is a Player versus Player sandbox survival experience. The objective of this mission is to rally team members, scavenge supplies, weapons, and vehicles, and destroy the other players. It is survival at its best! Keep in mind this is a work in progress, please direct your reports to http://www.exilemod.com
                                
                                <br/>FAQ:
                                
                                <br/>Q. What am I supposed to do here?
                                <br/>A. See the above description
                                <br/>
                                <br/>Q. Where can I get a gun?
                                <br/>A. Weapons are found in one of three places, first in ammo crates that come as rewards from missions, inside of buildings, and second, Traders throughout the map. The last place to find a gun would be on the dead of players whose bodies have not yet been looted.
                                <br/>
                                <br/>Q. What are the blue circles on the map?
                                <br/>A. The circles represent trader No kill area limits. 
                                <br/>
                                <br/>Q. Why is it so dark, I cant see.
                                <br/>A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or use your Nightvision Goggles as the darkness sets in.
                                <br/>
                                <br/>Q. Where can I find Food?
                                <br/>A. This game has a food and water system that you must stay on top of if you hope to survive. You can collect food and water from building within towns.
                                <br/>
                                <br/>Q. I saw someone breaking a rule, what do I do?
                                <br/>A. Simply go into global chat and get the attention of one of the admins or visit our forums, and make a report if the offense is serious.
                                "
    ]
    
];