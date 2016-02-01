****************************************************************************
- About -

This Plugin will reloade current files if they change, get edited etc.

* - Your-Admin.xml
* - Your-Command.xml
* - Your-WhiteList.txt
* - Your-BadWords.txt
* - Your-BadNames.txt
* - Be Filter Files

** NOTES ABOUT MISSION SPESIFIC BE FILTER RULES **
If you have a set of mission specific filer rules you need to set it up. Read more about it at bottom

With this plugin you can edit your Admins.xml or WhiteList.txt ,..., without restarting Bec.exe for it to have effect.
The plugin is set to watch over the files every 5th second. this can be changed

Note. its unknown if the plugin will work if the file(s) are stored on network drive(s). 
I am unsure if "os.stat(filename).st_mtime" will work on them nor do i know if it will work with Linux/Wine. 



****************************************************************************
- Install -

To install this plugin simply place the WatchDog directory into Bec\Plugins directory

If your Bec has no Plugins directory you need to create one first.
C:\Path\Bec\Plugins


C:\Path\Bec\Plugins\WatchDog
C:\Path\Bec\Plugins\WatchDog\__init__.py
..



****************************************************************************
- Setup\Configure -

* Multiple Server Configuration.. 
If you use one Bec.exe with multiple config files in Bec's directory READ ON!!!
If you have multiple servers and if you only want to run the plugin with Bec for a|or spesific server(s).
Then define the config names in the SERVERS variable , you'll find it in: __init__.py
Example you run 3 servers, named: 
* - server-1.cfg
* - dayZ-foobar.cfg
* - peter-pans-wasteland.cfg
But you only want to run the plugin on the 2 first servers (server-1.cfg and dayZ-foobar)
You then define it like this, "remember quotes around the name"

SERVERS = ["server-1.cfg", "dayZ-foobar"]

If you want it to start no matter what server, then leave it empty
Default it is set to start on any configuration...


* BE Filters for custom missions.
To enable filters for your mission you need to open up the __init__.py file and add in your mission directory.
You scroll down until you see a list called. MISSIONS = []

now. lets assume you have two missions you run and have BE filter rules for both of them.
In the __init__.py file we add the names to the MISSIONS list. like:
MISSIONS = ["wasteland.altis", "warfare.stratis"]
ofcource you need to use the names of your mission. and don't forget the quotes.
