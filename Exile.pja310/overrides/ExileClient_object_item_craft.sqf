/**
 * ExileClient_object_item_craft
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_recipeClassName","_quantityToCraft","_quantityCrafted","_metSideConditions","_recipeConfig","_returnedItems","_interactionModelGroupClassName","_components","_tools","_equippedMagazines","_addedItems","_toolItemClassName","_equippedToolQuantity","_interactionModelGroupModels","_foundObject","_i","_hasAllComponents","_componentQuantity","_componentItemClassName","_equippedComponentQuantity","_returnedItemQuantity","_returnedItemClassName","_feedbackMessage","_returnedItemName"];
_recipeClassName = _this select 0;
_quantityToCraft = _this select 1;
_quantityCrafted = 0;
_metSideConditions = true;
_recipeConfig = missionConfigFile >> "CfgCraftingRecipes" >> _recipeClassName;
_returnedItems = getArray(_recipeConfig >> "returnedItems");
_interactionModelGroupClassName = getText(_recipeConfig >> "requiredInteractionModelGroup");
_components = getArray(_recipeConfig >> "components");
_tools = getArray(_recipeConfig >> "tools");
_equippedMagazines = magazines player;
_addedItems = [];
{
	_toolItemClassName = _x;
	_equippedToolQuantity = { _x == _toolItemClassName } count _equippedMagazines;
	if (_equippedToolQuantity == 0 ) then
	{
		_metSideConditions = false;
	};
}
forEach _tools;
if ( getNumber(_recipeConfig >> "requiresOcean") == 1 ) then
{
	if !(surfaceIsWater getPos player) then 
	{
		_metSideConditions = false;
	};
};
if ( getNumber(_recipeConfig >> "requiresFire") == 1 ) then
{
	if !([player, 4] call ExileClient_util_world_isFireInRange) then 
	{
		_metSideConditions = false;
	};
};
if( _interactionModelGroupClassName != "" ) then
{
	_interactionModelGroupModels = getArray(missionConfigFile >> "CfgInteractionModels" >> _interactionModelGroupClassName >> "models");
	_foundObject = false;
	if ([ASLtoAGL (getPosASL player), 10, _interactionModelGroupModels] call ExileClient_util_model_isNearby) then
	{
		_foundObject = true;	
	}
	else 
	{
		if ( _interactionModelGroupModels call ExileClient_util_model_isLookingAt ) then
		{
			_foundObject = true;
		};
	};
	if !(_foundObject) then
	{
		_metSideConditions = false;
	};
};
if (_metSideConditions) then
{
	for "_i" from 1 to _quantityToCraft do 
	{
		_hasAllComponents = true;
		{
			_componentQuantity = _x select 0;
			_componentItemClassName = _x select 1;
			_equippedComponentQuantity = { _x == _componentItemClassName } count _equippedMagazines;
			if (_equippedComponentQuantity < _componentQuantity ) then
			{
				_hasAllComponents = false;
			};
		}
		forEach _components;
		if (_hasAllComponents) then
		{
			if ([_components, _returnedItems] call ExileClient_util_inventory_canExchangeItems) then
			{
				{
					_componentQuantity = _x select 0;
					_componentItemClassName = _x select 1;
					for "_i" from 1 to _componentQuantity do 
					{
						player removeItem _componentItemClassName;
					};
				}
				forEach _components;
				{
					_returnedItemQuantity = _x select 0;
					_returnedItemClassName = _x select 1;
					_addedItems = [_addedItems, _returnedItemClassName, _returnedItemQuantity] call BIS_fnc_addToPairs;
					for "_i" from 1 to _returnedItemQuantity do 
					{
						player addItem _returnedItemClassName;
					};
				} 
				forEach _returnedItems;
				_quantityCrafted = _quantityCrafted + 1;
			};
		};
	};
};
if (_quantityCrafted > 0) then
{	
	_feedbackMessage = "";
	{
		_returnedItemClassName = _x select 0;
		_returnedItemQuantity = _x select 1;
		_returnedItemName = getText(configFile >> "CfgMagazines" >> _returnedItemClassName >> "displayName");
		if (_feedbackMessage != "") then 
		{
			_feedbackMessage = _feedbackMessage + "<br/>";
		};
		_feedbackMessage = _feedbackMessage + format ["+%1x %2", _returnedItemQuantity, _returnedItemName];
	}
	forEach _addedItems;
	["ItemCraftedInformation", [_feedbackMessage]] call ExileClient_gui_notification_event_addNotification;
}
else 
{
	["InventoryFullWarning"] call ExileClient_gui_notification_event_addNotification;
};
true