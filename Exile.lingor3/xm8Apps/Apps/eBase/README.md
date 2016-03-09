# eBase XM8 App
The eBase App allows players to buy base building kits or upgrades such as CCTV kits through the XM8. Once a player has purchased a package it will be delivered to their current position via a parachute drop.

![](https://i.gyazo.com/d25b4e4d5aac20bae14159a8c4e0ec29.gif)

### Credits:

[@Shix](http://www.exilemod.com/profile/4566-shix/)- Dialog God

[@WolfkillArcadia](http://www.exilemod.com/profile/12063-wolfkillarcadia/) - Sex appeal and made parachutes fly.

### Dependencies:

* [XM8 Apps](http://www.exilemod.com/topic/9040-updated-xm8-apps/) - by [@Shix](http://www.exilemod.com/profile/4566-shix/)
* [Poptabs/Respects update](https://github.com/happydayz-enigma/Enigma_Exile_Custom) server side addon by [@happydayz](http://www.exilemod.com/profile/3076-happydayz/)
     * Download and drop 'Enigma_Exile_Custom.pbo' into '@ExileServer\addons'

### Todo

* Utilize Exile functions to update poptabs (@Grim is cool)

### Configuration

`_Box1Name = "Starter";
Box1Items = [
['Exile_Item_Flag',1],
['Exile_Item_Matches',2],
['Exile_Item_CookingPot',1],
['Exile_Item_CanOpener',1],
['Exile_Item_Handsaw',1],
['Exile_Item_Grinder',1],
['Exile_Item_CampFireKit',1],
['Exile_Item_WorkBenchKit',1]
];
box1Cost = 3000;`

Pretty self explanatory

`_Box1Name = "Starter";`

The name of the box to be displayed on the Xm8

`['Exile_Item_Flag',1]`

Array of items to be added to the box ['ItemClassName',Quantity]

`box1Cost = 3000;`

The price of the box
