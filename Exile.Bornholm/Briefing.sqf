uiSleep 10;
if (!hasInterface) exitWith {};

waitUntil {!isNil "ExileClientLoadedIn"};
 // Waits for Exile to finish up

player createDiarySubject ["rules", "Server Rules"];
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
                                <br/>Lewis
                                <br/>Ford
                                <br/>KingHeavy
                                <br/>Sage
								<br/>Optima
								<br/>Lewis
                                <br/>
                                "
            ]

];

    player createDiaryRecord ["rules",
            [
                "Server Rules",
                                "
                                <br/>**All of the following rules are punishable offences.**
                                <br/>
                                <br/>No Building AT ALL within 500m of all Military Outposts</p>
                                <br/>No Crying in Chat, No Racism, No Harrassment</p>
                                <br/>No Building within 1000 Meters of ANY Traders</p>
                                <br/>No Trolling,Stealing Directly From Players, or Griefing in SafeZones</p>
                                <br/>Vehicles Left in SafeZones Spawn Unlocked and are Free to Take</p>
                                <br/>No Camping or Shooting into SafeZones</p>
                                <br/>No Base Kamikaze w/ Aircraft or Sling Stealing in Safe Zones</p>
                                <br/>Report any glitches or greifing on TS or post proof to Forums. Rewards for finding Hackers!!!</p>
                                <br/>Glitching, Exploiting, and Hacking will get you Banned!</p>
                                <br/>While compensations are rare, they will be considered on a case-by-case basis.</p>

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
                                <br/>A. The circles represent trader limits. If friendly soldiers are in a town, you can spawn there from the re-spawn menu; however if there is an enemy presence, you will not be able to spawn there.
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