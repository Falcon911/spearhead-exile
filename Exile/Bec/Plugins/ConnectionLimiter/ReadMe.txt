

****************************************************************************
- About -

The ConnectionLimiter plugins allows you to auto lock the server depending on how many players connect at given time.
You define how long is gong to stay locked. if the connection flow is with in the given time parameters the server will not lock.
This plugin can be usefull to prevent a flood of connections of players. "IE: server just restarted and N players are spamming reconnect".



****************************************************************************
- Install -

To install this plugin simply place the ConnectionLimiter directory into Bec\Plugins directory

If your Bec has no Plugins directory you need to create one first.
C:\Path\Bec\Plugins


****************************************************************************
- Setup\Configure -
To setup the max rate of connections you need to edit the CL_Settings.

The default rate of connections is set like: 15 connections in 5 seconds locks the server for 10 seconds
If you only have one config file for your Bec then use the DEFAULT array instead.
DEFAULT = [15,10,5]
and leave the dict called CONFIG empty like CONFIG = {}


If running multiple config files from one Bec install and want to have different settings on them.
You need to add your settings to the dict called CONFIG.
Change CONFIG = {} to something like

CONFIG = {
"BecConfig_1.cfg" : [ 18, 9, 12 ],
"BecConfig_2.cfg" : [ 8, 5, 3 ]
}

That means when the rate of connections is larger than 18 connections in 12 sec. it will lock the server for 9 seconds
and 8 connections in 3 sec will lock the server for 5 seconds for server-2
If you do not set your config name in the CONFIG dict. it will use default values.

you can ofcource do the opposite and only allow one config/server to use the plugin by adding in the filename to the SERVERS variable


