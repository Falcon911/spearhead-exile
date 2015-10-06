/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_object","_fromMagazine","_toMagazine","_magazines","_newMagazines","_removed"];
_object = _this select 0;
_fromMagazine = _this select 1;
_toMagazine = _this select 2;
_magazines = magazinesAmmo _object;
_newMagazines = [];
_removed = false;
if!(_magazines isEqualTo [])then
{
	{
		if((_x select 0) in [_fromMagazine select 0,_toMagazine select 0])then
		{
			if(_removed)then
			{
				_newMagazines pushBack _x;
			}
			else
			{
				if!((_x select 1) isEqualTo (_fromMagazine select 1))then
				{
					_newMagazines pushBack _x;
				}
				else
				{
					_removed = true;
				};
			};
			_object removeItem (_x select 0);
		};
	}
	forEach _magazines;
};
_newMagazines pushBack _toMagazine;
{
	_object addItem (_x select 0);
}
forEach _newMagazines;
true