if (!hasInterface) exitWith {};

waitUntil {!isNil "ExileClientLoadedIn"};
 // Waits for Exile to finish up


player createDiarySubject ["Info","Information"];

// Info - Information for our Website and TeamSpeak Server.

	
	player createDiaryRecord ["Info",
		[
			"TeamSpeak",
				"
				<br/>
				Join our TeamSpeak server:<br/><br/>
				<b>ts.spearheadgaming.net</b>
				"
		]
	];

	player createDiaryRecord ["Info",
		[
			"Website",
				"
				<br/>pastebin
				Visit our webiste:<br/><br/>
				<b>http://spearheadgaming.net/</b>
				"
		]
	];

	
// Rules...... Ummm...... Rules!

	player createDiaryRecord ["Info",
		[
			"Rules",
				"
				<br/>
	<b>RULES:</b>
	No voice in Sidechat, speak in Direct, Group, or Vehicle!<br/><br/>
	No Sniping/Camping trader areas within a 500 Meter range in any direction.<br/><br/>
	No Griefing, Trolling, or Flaming!<br/><br/>
	No Advertising or Spamming!<br/><br/>
	Respect all Players!<br/><br/>
	No Excessive Swearing!<br/><br/>
	No Racism, or Sexism!<br/><br/>
	Listen to the Admins!<br/>
				"
		]
	];