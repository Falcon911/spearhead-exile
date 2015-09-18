/**
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
class CfgPatches
{
	class exile_server_config
	{
		requiredVersion = 0.1;
		requiredAddons[] = {};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
	};
};


class CfgBuildings
{
	///////////////////////////////////////////////////////////////////////////
	// Castles & Lighthouses & Life Guard Towers
	///////////////////////////////////////////////////////////////////////////
	class Land_LifeguardTower_01_F
	{
		table = "Tourist";
		positions[] = {{-0.498047, -0.222656, 1.13312}};
	};

	class Land_LightHouse_F
	{
		table = "Tourist";
		positions[] = {{-5.74805, 11.0859, -3.75002}, {0.789063, -2.94336, -11.0953}, {1.07813, -2.83008, 5.39755}};
	};

	class Land_Lighthouse_small_F
	{
		table = "Tourist";
		positions[] = {{-0.369141, 1.18555, -3.39546}, {4.32617, -0.462891, -3.39546}};
	};

	class Land_Castle_01_tower_F
	{
		table = "Tourist";
		positions[] = {{-1.66602, 0.603516, 7.94255}, {-1.99023, -1.70508, -1.0866}, {-2.14453, 2.73633, -3.95897}, {0.164063, 1.33203, -9.47995}, {1.14844, -1.18359, 7.94255}, {2.06641, 2.66992, -6.67494}, {2.15039, -1.89063, 1.70487}, {2.27344, 2.70703, 4.42336}};
	};

	///////////////////////////////////////////////////////////////////////////
	// Military
	///////////////////////////////////////////////////////////////////////////
	//"Land_Airport_center_F"
	//"Land_Airport_left_F"
	//"Land_Airport_right_F"
	// TODO: "Land_Cargo_House_V2_F",

	class Land_TentHangar_V1_F
	{
		table = "Military";
		positions[] = {{-8.1582, -2.20703, -4.08853}, {-8.1582, 6.85547, -4.08853}, {-8.52734, -7.57227, -4.08853}, {7.76953, -7.64453, -4.08853}, {8.16016, 1.89453, -4.08853}, {8.57617, 7.48438, -4.08853}};
	};

	class Land_Hangar_F
	{
		table = "Military";
		positions[] = {{-11.6641, 20.9063, -5.38129}, {-12.1133, 9.19336, -5.38129}, {-12.1543, -3.90625, -5.38129}, {-12.1816, -16.8906, -5.38129}, {1.75, 20.9688, -5.38129}, {11.3711, -19.2734, -5.38129}, {12.0469, -5.7168, -5.38129}, {12.7305, 6.83203, -5.38129}, {13.7285, 18.1602, -5.38129}};
	};

	class Land_Airport_Tower_F
	{
		table = "Military";
		positions[] = {{-0.363281, 6.25586, -10.4415}, {-0.636719, -2.08203, -1.4408}, {-0.638672, 2.21875, -4.44063}, {-0.705078, 1.94336, -7.44128}, {-0.751953, 5.2793, 1.55464}, {-1.10742, -4.67578, 2.25613}};
	};

	class Land_Cargo_House_V1_F
	{
		table = "Military";
		positions[] = {{-1.38281, 3.12109, 0.040287}, {1.24805, 2.54102, 0.0402873}};
	};

	class Land_Cargo_House_V3_F
	{
		table = "Military";
		positions[] = {{-2.0918, 1.58984, -0.0957484}, {1.11914, 3.17969, 0.0402873}};
	};

	class Land_Cargo_HQ_V1_F
	{
		table = "Military";
		positions[] = {{-0.294922, -3.42188, -3.27229}, {-1.46484, 3.26172, -3.27229}, {-2.02734, -2.62891, -0.747443}, {4.24609, 1.51758, -0.747443}, {4.98633, 3.64844, -3.27229}};
	};

	class Land_Cargo_HQ_V2_F
	{
		table = "Military";
		positions[] = {{-1.25586, 1.48828, -0.747442}, {-1.50391, -2.52148, -3.27229}, {-1.50391, 2.67773, -3.27229}, {-1.9043, -4.61133, -0.747442}, {5.35156, 1.64648, -0.747442}, {5.5332, 3.30859, -3.27229}};
	};

	class Land_Cargo_HQ_V3_F
	{
		table = "Military";
		positions[] = {{-1.56641, -2.93164, -0.747444}, {-1.81641, -4.90234, -3.27229}, {-1.89648, 0.654297, -3.27229}, {4.65234, 2.41602, -3.27229}, {5.24805, 1.60742, -0.747444}};
	};

	class Land_u_Barracks_V2_F
	{
		table = "Military";
		// There are broken?
		//positions[] = {{-0.505859, 3.2168, 0.605521}, {-0.601563, 3.07617, 3.9395}, {-11.0234, -2.65625, 0.60552}, {-11.1328, -3.58398, 3.9395}, {-12.377, 0.271484, 3.9395}, {-2.39453, -3.92773, 0.605342}, {-5.09766, -4.89844, 3.93943}, {-8.69922, 3.24414, 3.9395}, {-9.12695, 3.73047, 0.60552}, {10.3711, 3.51367, 0.605521}, {10.6484, 2.85156, 3.9395}, {13.0684, -3.30469, 0.605521}, {13.1934, -3.42383, 3.9395}, {3.28711, -3.98633, 0.605521}, {3.4707, -3.55469, 3.9395}, {6.22852, 3.50391, 3.9395}, {6.39258, 3.05664, 0.605521}};
		positions[] = {{9.75244, -1.66211, 1.43508}, {9.70215, -1.77148, -1.89791}, {-5.31592, -2.94531, -1.89791}, {-16.0903, 1.21094, -1.8979}, {6.95557, 4.13867, -1.89791}, {-14.6865, -2.08008, -1.89791}, {-3.89746, 3.95898, -1.89791}, {0.0639648, -2.16406, 1.43507}, {2.74951, 4.44336, 1.43507}, {2.84521, 4.22461, -1.89791}, {-12.3584, 4.30469, 1.43508}, {-12.1733, 4.46875, -1.89791}, {-16.123, 1.125, 1.43507}, {0.137695, -1.90625, -1.89791}, {-14.585, -1.94336, 1.43508}, {-5.88818, -3.99609, 1.43507}, {-3.96143, 4.37109, 1.43508}, {6.89014, 4.32227, 1.43507}};
	};

	class Land_i_Barracks_V2_F
	{
		table = "Military";
		positions[] = {{-0.505859, 3.2168, 0.605521}, {-0.601563, 3.07617, 3.9395}, {-11.0234, -2.65625, 0.60552}, {-11.1328, -3.58398, 3.9395}, {-12.377, 0.271484, 3.9395}, {-2.39453, -3.92773, 0.605342}, {-5.09766, -4.89844, 3.93943}, {-8.69922, 3.24414, 3.9395}, {-9.12695, 3.73047, 0.60552}, {10.3711, 3.51367, 0.605521}, {10.6484, 2.85156, 3.9395}, {13.0684, -3.30469, 0.605521}, {13.1934, -3.42383, 3.9395}, {3.28711, -3.98633, 0.605521}, {3.4707, -3.55469, 3.9395}, {6.22852, 3.50391, 3.9395}, {6.39258, 3.05664, 0.605521}};
	};

	class Land_i_Barracks_V1_F
	{
		table = "Military";
		positions[] = {{-0.464844, 3.49219, 0.605521}, {-0.476563, 3.95703, 3.9395}, {-10.4844, -3.32422, 3.9395}, {-11.1055, -2.92188, 0.605521}, {-12.3066, 0.222656, 0.605521}, {-2.29688, -4.23828, 0.605283}, {-3.89648, -4.80078, 3.93923}, {-8.66992, 3.86328, 0.605521}, {-9.03516, 3.31055, 3.9395}, {10.3301, 2.77734, 0.605521}, {10.4023, 3.18945, 3.9395}, {13.0352, -3.23438, 3.9395}, {13.1738, -3.31055, 0.605521}, {3.57227, -3.49414, 0.605522}, {3.61133, -2.98047, 3.9395}, {6.38281, 3.41992, 0.60552}, {6.4082, 2.87695, 3.9395}};
	};

	class Land_Cargo_Patrol_V1_F
	{
		table = "Military";
		positions[] = {{-1.6875, -1.03906, -0.55952}, {1.73828, -1.17383, -0.55952}};
	};

	class Land_Cargo_Patrol_V2_F 
	{
		table = "Military";
		positions[] = {{-1.01953, -1.0918, -0.55952}, {1.82031, -0.695313, -0.55952}};
	};

	class Land_Cargo_Tower_V1_F 
	{
		table = "Military";
		positions[] = {{-3.54785, -3.01758, 2.47987},{-3.15625, -0.837891, 5.00472},{-2.0498, -3.29883, -0.120125},{4.55957, 4.39258, -0.120125},{-4.42383, 2.45117, -0.120125},{-2.87598, 2.20898, -4.2958},{-2.88281, 4.14258, 5.00472},{0.235352, -1.19727, 5.07987},{3.58105, 4.11719, 2.47988},{1.27441, 3.17773, -8.24333},{2.50488, 0.0625, 5.00472}};
	};

	class Land_Cargo_Tower_V1_No1_F
	{
		table = "Military";
		positions[] = {{-2.4668, -4.10156, 5.00471}, {-2.7168, 1.0625, -0.120123}, {-2.83984, -2.95313, 2.47987}, {-3.06641, -2.66992, -0.120123}, {-3.12109, 2.42773, -4.2958}, {-3.16211, 4.51563, 5.00471}, {1.26367, 2.49609, -8.24333}, {2.25195, 4.30664, -0.120123}, {3.34766, 3.33203, 2.47987}, {3.66797, 1.8457, 5.00471}};
	};

	class Land_Cargo_Tower_V1_No2_F 
	{
		table = "Military";
		positions[] = {{-2.71289, 3.0957, -0.120123}, {-2.83203, 5.06445, 5.00472}, {-3.48633, 2.28906, -4.2958}, {-3.64844, -2.87891, 2.47988}, {-3.77344, -3.32617, 5.00472}, {-3.80664, -1.75977, -0.120123}, {0.0625, -0.287109, 5.07988}, {1.58984, -2.11523, -0.120123}, {2.13672, 2.20703, -8.24332}, {3.57422, 4.22461, 2.47988}, {3.75, 1.31055, 5.00472}, {4.98633, 3.90625, -0.120123}};
	};

	class Land_Cargo_Tower_V1_No3_F 
	{
		table = "Military";
		positions[] = {{-0.214844, -0.460938, 5.07988}, {-2.33203, -2.96094, -0.120119}, {-2.89648, -4.0625, 5.00472}, {-3.08008, -2.8125, 2.47988}, {-3.28711, 2.60352, -4.2958}, {-3.61328, 4.44141, 5.00472}, {-4.01758, 1.86133, -0.120119}, {1.54688, 2.61133, -8.24332}, {3.52734, 3.8418, 2.47988}, {3.5332, -0.386719, 5.00472}, {4.88477, 4.18945, -0.120119}};
	};

	class Land_Cargo_Tower_V1_No4_F 
	{
		table = "Military";
		positions[] = {{-2.68555, -3.07031, -0.120119}, {-2.93359, -4.27148, 5.00472}, {-3.22461, 4.84375, 5.00472}, {-3.6543, 1.57227, -4.2958}, {-3.70508, -3.0332, 2.47988}, {-4.26367, 0.980469, -0.120119}, {2.1543, 2.08789, -8.24332}, {3.46289, 2.25781, 2.47988}, {3.62305, 2.16797, 5.00472}, {5.10156, 4.20898, -0.120119}};
	};

	class Land_Cargo_Tower_V1_No5_F
	{
		table = "Military";
		positions[] = {{-2.25781, -2.77344, -0.120119}, {-2.375, -4.45508, 5.00472}, {-2.41602, 5.18164, 5.00472}, {-2.94922, 2.4082, -4.2958}, {-3.89648, -2.7832, 2.47988}, {-4.03906, 1.43945, -0.120119}, {0.0410156, -0.8125, 5.07988}, {1.62305, 2.55664, -8.24332}, {2.97461, -0.335938, 5.00472}, {3.90039, 3.68555, 2.47988}, {4.80859, 3.57422, -0.120117}};
	};

	class Land_Cargo_Tower_V1_No6_F
	{
		table = "Military";
		positions[] = {{-1.6875, -2.5918, -0.120119}, {-3.16992, -3.74219, 5.00472}, {-3.41797, 1.87305, -0.120119}, {-3.49805, 2.06836, -4.2958}, {-3.81055, 4.59766, 5.00472}, {-3.92969, -2.12109, 2.47988}, {1.92578, 2.27344, -8.24332}, {3.50195, 2.76563, 2.47988}, {3.64258, 0.0078125, 5.00472}, {5.19141, 4.45117, -0.120119}};
	};

	class Land_Cargo_Tower_V1_No7_F
	{
		table = "Military";
		positions[] = {{-2.59766, -3.14063, -0.120119}, {-2.7832, 1.94531, -4.2958}, {-2.83203, 1.58594, -0.120119}, {-3.20508, 4.62891, 5.00472}, {-3.29883, -2.90234, 5.00472}, {-3.87891, -3.11914, 2.47988}, {0.228516, -1.05273, 5.07988}, {1.65234, 2.58594, -8.24332}, {3.40039, 3.05859, 2.47988}, {4.18164, 0.246094, 5.00472}, {4.42578, 3.99805, -0.120119}};
	};

	class Land_Cargo_Tower_V2_F 
	{
		table = "Military";
		positions[] = {{4.29492, 3.70508, -0.120117}, {-2.5293, -3.10742, 2.47988}, {-2.6543, 2.01172, -4.2958}, {-2.66797, -3.4707, 5.00472}, {-2.67773, 4.97461, 5.00472}, {-3.06836, 1.80273, -0.120117}, {-3.25586, -3.56445, -0.120117}, {0.611328, 0.0214844, 5.07988}, {2.46094, 1.92383, -8.24332}, {2.61328, -0.296875, 2.47988}, {3.07422, 4.14063, 2.47988}, {3.50195, 1.22656, 5.00472}};
	};

	class Land_Cargo_Tower_V3_F
	{
		table = "Military";
		positions[] = {{-1.59375, -2.7168, -0.120119}, {-2.40039, 2.39648, -4.2958}, {-3.24023, -3.17773, 5.00472}, {-3.51367, 4.57617, 5.00472}, {-3.70703, -3.60547, 2.47988}, {-4.54883, 2.47266, -0.120119}, {0.142578, -0.179688, 5.07988}, {2.2793, 2.25391, -8.24332}, {3.87109, 3.3418, 2.47988}, {4.22656, 0.390625, 5.00472}, {5.05469, 4.16406, -0.120119}};
	};

	class Land_MilOffices_V1_F
	{
		table = "Military";
		positions[] = {{-11.6309, -5.04492, -2.86675}, {-15.1172, 9.07617, -2.86675}, {-15.123, 2.19336, -2.86675}, {-15.5938, -4.07227, -2.86675}, {-3.46484, -3.22266, -2.86675}, {-4.10352, 9.33398, -2.86675}, {-7.09766, -2.95898, -2.86675}, {-8.6582, 9.02344, -2.86675}, {0.794922, -3.08594, -2.86675}, {1.45703, 8.60156, -2.86675}, {13.9258, 0.492188, -2.86675}, {15.3613, 8.10742, -2.86675}, {8.54883, 8.01563, -2.86675}, {8.61133, -4.3125, -2.86675}, {8.68359, -1.73438, -2.86675}};
	};

	class Land_Radar_F
	{
		table = "Military";
		positions[] = {{-10.1797, -9.80859, -6.00412}, {-9.61719, 10.4219, -6.00412}, {11.6211, 1.06641, -6.00412}, {2.81445, 12.2578, -7.78305}};
	};

	///////////////////////////////////////////////////////////////////////////
	// Medical
	///////////////////////////////////////////////////////////////////////////
	//"Land_Hospital_main_F",
	//"Land_Hospital_side1_F",
	//"Land_Hospital_side2_F",
	class Land_Medevac_house_V1_F
	{
		table = "Medical";
		positions[] = {{-1.25, 1.01367, -0.105749}, {1.38281, 2.82227, 0.0302868}};
	};

	class Land_Medevac_HQ_V1_F
	{
		table = "Medical";
		positions[] = {{-0.896484, 2.24219, -3.26622}, {-1.45898, -3.75391, -3.26622}, {-1.54297, 1.05469, -0.741375}, {5.17578, 2.66992, -3.26622}, {5.6875, 1.63477, -0.741374}};
	};

	///////////////////////////////////////////////////////////////////////////
	// Garages / Vehicle
	///////////////////////////////////////////////////////////////////////////
	class Land_FuelStation_Build_F
	{
		table = "VehicleService";
		positions[] = {{-1.02344, -0.509766, -1.33601}, {2.07617, 0.580078, -1.3361}};
	};

	class Land_i_Garage_V1_F
	{
		table = "VehicleService";
		positions[] = {{-0.925781, 2.05469, -0.0974805}, {-1.52539, -1.99805, -0.0974805}, {3.80273, -0.939453, -0.0974805}};
	};

	class Land_i_Garage_V2_F
	{
		table = "VehicleService";
		positions[] = {{-0.00585938, -1.24609, -0.0974801}, {-2.16016, 1.54492, -0.0974798}, {1.60547, 2.11719, -0.0974803}, {3.2832, -1.51953, -0.0974796}};
	};

	class Land_CarService_F
	{
		table = "VehicleService";
		positions[] = {{-0.964844, 1.77148, -1.25606}, {-3.15625, 7.39844, -1.25606}, {-4.54688, 4, -1.25606}, {0.492188, 2.8457, -1.25606}, {3.50781, -0.113281, -1.25606}, {3.74414, 6.12891, -1.25606}};
	};

	///////////////////////////////////////////////////////////////////////////
	// Civillian Lower Class
	///////////////////////////////////////////////////////////////////////////
	// TODO: "Land_u_Addon_02_V1_F",
	// TODO: "Land_i_Addon_02_V1_F",
	// TODO: "Land_i_Addon_03mid_V1_F",

	class Land_Chapel_Small_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{0.482422, 0.65625, -0.867858}, {3.08984, -1.2832, -0.867858}};
	};

	class Land_Chapel_Small_V2_F 
	{
		table = "CivillianLowerClass";
		positions[] = {{0.556641, -0.966797, -0.867857}, {3.54297, 0.486328, -0.867857}};
	};

	class Land_Chapel_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-3.22852, -3.4043, -2.80848}, {-3.65625, 2.8418, -2.80848}, {-6.47266, -2.20703, -2.80848}, {3.98438, 2.72852, -2.80848}, {4.73242, -2.59375, -2.80848}, {9.35938, -0.285156, -2.60848}};
	};

	class Land_Chapel_V2_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.36523, 2.46289, -2.80848}, {-3.06445, -2, -2.80848}, {-6.61328, -1.54688, -2.80848}, {4.75781, 3.67383, -2.80848}, {4.82813, -2.96484, -2.80848}, {9.03711, 0.316406, -2.60848}};
	};

	class Land_Church_01_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-4.36719, -5.81055, -5.46942}, {-4.46875, -2.23633, -5.74363}, {-4.54492, 1.57422, -5.74363}, {-4.8125, 5.58789, -5.49442}, {3.00781, -5.92969, -6.44017}, {4.19141, 5.77148, -6.44865}};
	};

	class Land_i_Addon_03_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.98828, -0.244141, -0.0501008}, {3.53711, -0.578125, -0.0501013}};
	};

	class Land_i_Addon_04_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-1.25, 0.0175781, 0.0796976}};
	};

	class Land_u_Addon_01_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{1.69727, 3.04102, 0.0627024}, {4.28125, 1.1543, 0.0627022}};
	};

	class Land_i_Windmill01_F 
	{
		table = "CivillianLowerClass";
		positions[] = {{-0.585938, 0.908203, -3.53162}};
	};

	class Land_d_Windmill01_F 
	{
		table = "CivillianLowerClass";
		positions[] = {{-0.935547, 0.259766, -2.2985}, {-1.65039, 0.365234, 0.947132}};
	};

	class Land_Slum_House01_F
	{
		table = "CivillianLowerClass";
		positions[] = {{0.767578, 0.773438, -1.07847}};
	};

	class Land_Slum_House02_F
	{
		table = "CivillianLowerClass";
		positions[] = {{1.13867, 2.50391, -0.798099}, {1.59375, -0.0566406, -0.798099}};
	};

	class Land_Slum_House03_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-1.29688, 0.566406, -1.07377}, {2.27148, 1.125, -1.07377}};
	};

	class Land_cargo_house_slum_F 
	{
		table = "CivillianLowerClass";
		positions[] = {{-3.04688, -0.306641, -0.36025}};
	};

	class Land_i_Stone_HouseBig_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-0.777344, 2.19922, 1.21893}, {-1.33789, 0.355469, -1.65434}, {1.58594, -0.576172, 1.21893}, {3.7793, 1.48828, -1.64097}};
	};

	class Land_i_Stone_HouseBig_V2_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-0.207031, 2.62305, 1.21893}, {-1.26953, 0.136719, -1.65416}, {2.55078, -0.556641, 1.21893}, {4.26367, 1.48828, -1.63971}};
	};

	class Land_i_Stone_HouseBig_V3_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-0.484375, 2.57617, 1.21893}, {-0.759766, 0.404297, -1.65283}, {2.29102, -1.02539, 1.21893}, {4.02734, 1.1543, -1.64032}};
	};

	class Land_i_Stone_HouseSmall_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-3.47656, 2.25195, -0.627007}, {-6.96094, 3.02539, -0.619827}, {3.27148, 2.02734, -0.611488}, {6.61914, 2.50977, -0.596566}};
	};

	class Land_i_Stone_HouseSmall_V2_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.41992, 1.76758, -0.632064}, {-7.00391, 1.83594, -0.633547}, {3.77148, 2.05664, -0.609262}, {7.33008, 2.02539, -0.593399}};
	};

	class Land_i_Stone_HouseSmall_V3_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.68945, 2.05664, -0.628867}, {-7.74023, 3.45313, -0.615288}, {3.60938, 1.61328, -0.609982}, {6.83984, 3.07227, -0.595582}};
	};

	class Land_i_Stone_Shed_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.63867, 1.96484, -0.100502}, {1.19141, 2.16992, -0.100502}};
	};

	class Land_i_Stone_Shed_V2_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.12305, 1.86914, -0.100502}, {1.78125, 1.625, -0.100502}};
	};

	class Land_i_Stone_Shed_V3_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.3125, 2.05469, -0.100502}, {1.79297, 1.93359, -0.100502}};
	};

	class Land_u_House_Big_01_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-1.89648, 6.0332, 0.855065}, {-2.35742, 5.4082, -2.56494}, {-2.89648, -3.33203, 0.855065}, {-3.0957, -0.896484, -2.65494}, {1.25, -1.31445, -2.56494}, {2.0293, -0.521484, 0.855065}, {2.36523, 5.47461, -2.56493}, {2.95117, 5.49609, 0.855065}, {2.99023, -5.02734, 0.855065}, {3.58789, -4.98828, -2.56494}};
	};

	class Land_u_House_Big_02_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-2.43164, 2.83008, 0.965823}, {-2.70703, -2.07422, 0.965824}, {-2.88281, 1.88086, -2.54418}, {0.871094, -1.66016, -2.54418}, {2.41602, 3.00977, 0.965824}, {3.66992, -5.79883, -2.10418}, {3.9082, 3.56055, -2.54418}};
	};

	class Land_u_House_Small_01_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-1.18359, 3.63281, -0.904629}, {-1.7793, -2.59961, -0.903945}, {3.25195, 3.44531, -0.904572}};
	};

	class Land_u_House_Small_02_V1_F
	{
		table = "CivillianLowerClass";
		positions[] = {{-0.916016, -2.17969, -0.71971}, {-1.49609, 0.962891, -0.714579}, {3.83203, 1.15234, -0.713537}, {5.80469, -1.7207, -0.710968}};
	};

	///////////////////////////////////////////////////////////////////////////
	// Civillian Upper Class
	///////////////////////////////////////////////////////////////////////////
	class Land_Offices_01_V1_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-13.502, -6.54883, 9.84601}, {10.7676, -5.27734, 4.66547}, {-10.7031, 6.85156, -7.05899}, {-3.26953, 5.84961, 9.84601}, {1.09375, -4.51172, -7.05899}, {5.52148, 2.22852, 0.752261}, {5.68164, 4.16602, -7.05899}, {5.94531, -2.68945, -3.15997}, {6.1875, 2.40625, 4.66546}, {9.07422, -4.97656, 9.84601}};
	};

	class Land_i_House_Big_01_V1_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-2.21484, 5.46875, -2.56493}, {-3.24023, -1.5918, -2.65493}, {0.558594, -0.640625, 0.855072}, {1.24023, -1.98828, -2.56493}, {1.66602, -5.2832, 0.855072}, {2.19531, 5.19922, -2.56493}, {2.4375, 5.01172, 0.855076}, {2.87305, -5.01758, -2.56493}};
	};

	class Land_i_House_Big_01_V2_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-2.05078, 5.41016, 0.855071}, {-2.11133, 5.51758, -2.56493}, {-3.19531, -1.45117, -2.65493}, {0.328125, 0.283203, -2.56493}, {0.759766, -1.29688, 0.855071}, {1.27539, -5.21484, 0.855071}, {2.25195, -4.56445, -2.56493}, {3.68359, 5.18359, 0.855071}};
	};

	class Land_i_House_Big_01_V3_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-2.78125, 5.69336, -2.56493}, {-2.7832, 5.31055, 0.855072}, {-2.78906, 0.654297, 0.855072}, {-3.03906, -1.11133, -2.65493}, {0.675781, -1.29883, -2.56493}, {1.61133, -0.865234, 0.855072}, {2.51758, 5.85938, 0.855072}, {2.65625, -4.94531, -2.56493}, {2.99414, -5.15625, 0.855073}, {3.16211, 5.16406, -2.56493}};
	};

	class Land_i_House_Big_02_V1_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-1.69141, -2.51172, 0.784063}, {-2.58789, 3.63672, 0.784063}, {-2.86914, 2.97266, -2.62327}, {1.15234, -1.65625, -2.62327}, {2.55273, 1.625, 0.784063}, {3.08203, 2.11914, -2.62327}, {3.33594, -5.625, -2.28594}};
	};

	class Land_i_House_Big_02_V2_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-2.08789, -2.46484, 0.784063}, {-2.54688, 2.53906, -2.62327}, {-3.01758, 3.12109, 0.784063}, {1.11328, -1.46289, -2.62327}, {2.68945, 2.03711, 0.784063}, {3.02734, 2.27344, -2.62327}, {3.26367, -5.55273, -2.28594}};
	};

	class Land_i_House_Big_02_V3_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-2.50391, -2.10742, -2.62327}, {-3.00781, 3.68164, 0.784063}, {-3.0957, 2.57227, -2.62327}, {-3.31055, -2.88867, 0.784063}, {1.26953, -1.73438, -2.62327}, {2.40234, 2.26953, -2.62327}, {2.89844, 2.11719, 0.784064}, {3.26758, -5.52734, -2.28594}};
	};

	class Land_i_House_Small_01_V1_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-1.2207, 3.05078, -1.0419}, {-2.74414, -0.560547, -1.04199}, {3.06641, -1.90234, -1.0404}, {3.35547, 2.94336, -1.04187}};
	};

	class Land_i_House_Small_01_V2_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-2.53711, -1.80664, -1.0418}, {-3.90625, 3.26367, -1.04239}, {3.31836, -1.31641, -1.04058}, {3.38672, 3.78906, -1.04213}};
	};

	class Land_i_House_Small_01_V3_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-0.738281, 3.17578, -1.04194}, {-2.46094, -2.16992, -1.04174}, {-2.68359, -1.76563, -1.04187}, {-2.76563, 3.31641, -1.04232}, {3.07422, -1.27539, -1.04059}, {3.08398, 3.04883, -1.0419}, {3.41406, 3.10547, -1.04192}, {3.61719, -0.394531, -1.04086}};
	};

	class Land_i_House_Small_02_V1_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-1.08008, -2.11133, -0.709651}, {-1.18945, 0.785156, -0.705689}, {2.64258, -2.09766, -0.704848}, {5.95313, 0.556641, -0.700583}};
	};

	class Land_i_House_Small_02_V2_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-1.29688, 1.06641, -0.704727}, {-1.56836, -1.83789, -0.710279}, {2.85352, -1.52148, -0.704572}, {2.88086, 1.76367, -0.702332}, {5.21289, 0.935547, -0.701534}};
	};

	class Land_i_House_Small_02_V3_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-1.35352, 0.873047, -0.705387}, {-1.5, -2.00781, -0.710184}, {3.49219, -1.16602, -0.703744}, {5.61328, 1.51367, -0.70101}};
	};

	class Land_i_House_Small_03_V1_F
	{
		table = "CivillianUpperClass";
		positions[] = {{-3.89648, -0.134766, -0.371629}, {0.419922, 2.68555, -0.371629}, {3.59961, 2.0918, -0.371629}, {3.70703, -4.19727, -0.371629}};
	};

	///////////////////////////////////////////////////////////////////////////
	// Shops
	///////////////////////////////////////////////////////////////////////////
	class Land_i_Shop_01_V1_F
	{
		table = "Shop";
		positions[] = {{-0.863281, 6.10938, -2.76158}, {-1.2168, 0.232422, -2.76158}, {-1.2832, -0.884766, 1.10984}, {-2.28516, 6.1875, 1.10975}};
	};

	class Land_i_Shop_01_V2_F 
	{
		table = "Shop";
		positions[] = {{-1.17969, 5.32813, -2.76158}, {-18.127, 16.7285, -2.74088}, {-2.39258, 5.51563, 1.10978}, {-2.53906, 0.253906, -2.76158}, {-2.70703, -1.4707, 1.10992}, {-24.2051, 3.65039, 1.25308}, {1.15625, 1.20313, 1.10906}};
	};

	class Land_i_Shop_01_V3_F 
	{
		table = "Shop";
		positions[] = {{-1.5918, 5.35156, -2.76158}, {-2.39258, -0.544922, -2.76158}, {-2.73242, -1.03906, 1.10991}, {-2.98242, 5.80664, 1.10999}, {1.66016, 1.70508, 1.10901}};
	};

	class Land_i_Shop_02_V1_F 
	{
		table = "Shop";
		positions[] = {{-0.824219, 1.10742, -2.67036}, {-4.04883, -3.18555, 1.2386}, {-4.43359, -1.98242, -2.69136}, {0.78125, -2.35547, -2.66928}, {2.27734, 1.0957, 1.2386}};
	};

	class Land_i_Shop_02_V2_F 
	{
		table = "Shop";
		positions[] = {{-0.171875, -1.43359, -2.66855}, {-2.57422, -4.19336, 1.23859}, {-4.51758, 2.74023, -2.66855}, {1.61523, 0.28125, 1.23859}};
	};

	class Land_i_Shop_02_V3_F 
	{
		table = "Shop";
		positions[] = {{-1.01953, 0.71875, -2.66924}, {-2.86719, -3.83594, 1.23859}, {-4.25195, 3.58789, -2.66855}, {1.56641, 0.509766, 1.23859}};
	};

	class Land_u_Shop_01_V1_F 
	{
		table = "Shop";
		positions[] = {{-1.14258, 1.23438, -2.88084}, {-2.32422, 3.14648, 0.9905}, {-3.31836, 5.81836, 0.990853}, {0.808594, -0.544922, 0.990474}, {2.58789, 5.81641, -2.88084}};
	};

	class Land_u_Shop_02_V1_F 
	{
		table = "Shop";
		positions[] = {{-3.46484, -1.625, 1.23859}, {-3.9082, 3.0957, -2.66855}, {0.751953, -3.26563, -2.66855}, {1.71484, 0.486328, 1.23859}};
	};

	class Land_Kiosk_blueking_F 
	{
		table = "Shop";
		positions[] = {{-1.62109, 0.341797, -1.76588}, {1.36328, -0.908203, -1.76588}};
	};

	class Land_Kiosk_gyros_F 
	{
		table = "Shop";
		positions[] = {{-1.20898, -1.07813, -1.97606}, {1.26758, -0.128906, -1.97606}};
	};

	class Land_Kiosk_redburger_F
	{
		table = "Shop";
		positions[] = {{-1.07617, -0.335938, -2.87051}, {1.42188, -0.373047, -2.87051}};
	};

	///////////////////////////////////////////////////////////////////////////
	// Industrial
	///////////////////////////////////////////////////////////////////////////
	// TODO: "Land_Factory_Main_F"

	class Land_Unfinished_Building_01_F 
	{
		table = "Industrial";
		positions[] = {{-0.158203, 3.50391, 1.19791}, {-2.34375, 4.20898, -2.29709}, {-2.51563, 0.337891, 1.19791}, {-3.25391, 0.0351563, -2.29709}, {2.45508, -0.144531, -2.29709}, {3.10742, -2.34766, 1.19791}};
	};

	class Land_Unfinished_Building_02_F
	{
		table = "Industrial";
		positions[] = {{-0.890625, -3.35742, 0.976167}, {-2.31055, -1.57227, -2.48553}, {-6.36523, 2.20898, 0.976168}, {-6.58398, 3.67383, -2.50139}, {3.58008, 3.13281, -2.49362}, {4.33594, 3.00391, 0.976168}};
	};

	class Land_WIP_F
	{
		table = "Industrial";
		positions[] = {{-10.0645, -4.58398, 8.3499}, {-12.5254, 10.1191, 8.348}, {-13.3496, 9.04883, 12.3173}, {-14.3477, -2.64844, 0.392311}, {-15.1621, 9.90039, 0.407514}, {-15.9004, -9.26367, 12.3304}, {-16.0352, -2.52734, 4.32572}, {-16.0996, 4.24023, 0.444829}, {-16.4004, 8.88672, 4.32572}, {-16.7813, -8.80078, 0.347982}, {-17.0195, -8.72852, 4.32572}, {-3.60156, -14.6484, 4.32041}, {-4.18359, -1.03516, 0.386505}, {-6.93359, -0.988281, 12.1457}, {-7.66016, 9.24414, 0.417827}, {-7.77344, -10.4785, 0.359629}, {-8.33008, -14.7305, 12.3244}, {-8.73242, 9.51953, 4.32572}, {-8.88867, -13.3887, 0.355543}, {11.9922, -7.99219, 12.2546}, {12.9023, 9.91797, 0.448912}, {18.0801, -9.25781, 4.32428}, {19.5586, -7.8457, 8.33803}, {2.11719, 9.48438, 0.337147}, {20.6309, -9.31445, 0.329187}, {22.334, -2.5332, 4.32572}, {24.0859, -0.179688, 8.29181}, {3.30859, 6.66602, 8.36808}, {3.99219, -8.87891, 8.34295}, {4.74414, -8.89063, 4.32432}, {6.0332, -8.34961, 0.384681}, {7.08984, 10.4727, 4.32572}, {8.53906, 8.4082, 0.415831}, {9.10742, -1.40625, 0.431863}, {9.64844, 6.28906, 12.3112}};
	};

	class Land_dp_smallTank_F
	{
		table = "Industrial";
		positions[] = {{-0.0898438, -1.58203, 5.32797}};
	};

	class Land_dp_mainFactory_F
	{
		table = "Industrial";
		positions[] = {{-12.8477, -4.8457, -4.45162}, {-15.4961, 6.70703, -4.45162}, {-6.36133, -2.13477, 1.18268}, {-6.91211, -15.3555, 1.18268}, {0.736328, 8.16406, 1.18268}, {1.25391, -10.5801, 1.18268}, {12.8926, 7.0332, -5.51301}, {13.0332, -3.95117, -4.22302}, {13.1719, 4.60742, -4.22302}, {13.2676, 0.710938, -4.22302}, {14.793, -16.8613, -4.08302}, {18.1406, -9.24023, -4.08302}, {19.0566, 5.17969, -7.61482}, {19.0996, -5.68555, -5.51301}, {19.3535, 2.14844, -5.51301}, {3.43555, -2.94141, 1.18268}, {8.82617, -7.33008, -0.280016}, {8.92773, -13.9453, -0.280016}, {9.13281, 8.58203, -0.280016}};
	};

	class Land_dp_bigTank_F
	{
		table = "Industrial";
		positions[] = {{-1.54102, -1.93359, 3.59794}, {-5.79883, -0.496094, 3.59794}, {5.9707, -1.84375, 3.59794}};
	};

	class Land_dp_smallFactory_F
	{
		table = "Industrial";
		positions[] = {{-1.97266, 3.14844, 2.62608}, {-6.49609, -4.92773, 2.82442}, {5.32422, -3.69531, 2.95848}, {9.49805, -4.71094, 1.21193}, {9.95898, 1.41211, 1.21193}};
	};

	class Land_u_Shed_Ind_F
	{
		table = "Industrial";
		positions[] = {{-2.41211, 4.91602, -1.40862}, {-6.54688, -0.166016, -1.40862}, {10.6914, 2.14648, -1.40862}};
	};

	class Land_Metal_Shed_F
	{
		table = "Industrial";
		positions[] = {{-3.34375, -1.80273, -1.343}, {3.52539, -2.15625, -1.343}};
	};

	class Land_i_Shed_Ind_F 
	{
		table = "Industrial";
		positions[] = {{-2.66797, -0.576172, -1.40977}, {-2.85547, 6.49023, -1.40977}, {-5.78906, 0.158203, -1.40977}, {14.1348, 6.31445, -1.40977}, {5.70508, 0.423828, -1.40977}, {6.49609, 6.5625, -1.40977}};
	};

	class Land_Research_house_V1_F
	{
		table = "Industrial";
		positions[] = {{-1.28516, 2.89258, 0.0302877}, {1.12305, 2.04492, -0.0384929}};
	};

	class Land_Research_HQ_F
	{
		table = "Industrial";
		positions[] = {{-1.03125, 2.60547, -3.26622}, {-2.25195, -2.75586, -0.741376}, {-2.28711, -3.94141, -3.26622}, {4.69336, 4.01172, -3.26622}, {6.06445, 3.50391, -0.741376}};
	};
};
class CfgLootTables
{
	/**
	  Result of 100 rounds:

	  Exile_Item_SausageGravy
	  H_Bandanna_camo
	  Exile_Item_Catfood
	  B_Kitbag_sgg
	  U_C_Poor_2
	  B_Bergen_mcamo
	  hgun_Pistol_Signal_F
	  Exile_Item_CookingPot
	  Binocular
	  U_IG_Guerilla3_1
	  Exile_Item_PlasticBottleEmpty
	  Exile_Item_Surstromming
	  16Rnd_9x21_Mag
	  Exile_Item_Beer
	  hgun_P07_F
	  U_C_Poor_2
	  Exile_Item_Matches
	  arifle_Katiba_F
	  Exile_Item_Surstromming
	  arifle_TRG21_F
	  Exile_Item_ChristmasTinner
	  B_OutdoorPack_blk
	  FlareWhite_F
	  20Rnd_556x45_UW_mag
	  hgun_Pistol_heavy_01_F
	  30Rnd_9x21_Mag
	  30Rnd_65x39_caseless_green_mag_Tracer
	  Exile_Item_Catfood
	  Chemlight_red
	  Exile_Item_Surstromming
	  H_Bandanna_camo
	  Exile_Item_GloriousKnakworst
	  Exile_Item_Catfood
	  FlareRed_F
	  U_C_HunterBody_grn
	  Exile_Item_BBQSandwich_Cooked
	  optic_ACO_grn
	  Exile_Item_Catfood
	  arifle_TRG21_F
	  B_AssaultPack_mcamo
	  Exile_Item_GloriousKnakworst_Cooked
	  muzzle_snds_L
	  B_OutdoorPack_tan
	  Exile_Item_ChristmasTinner
	  Exile_Item_PlasticBottleEmpty
	  Exile_Item_BBQSandwich
	  optic_ACO_grn
	  B_FieldPack_cbr
	  Exile_Item_BBQSandwich
	  Chemlight_blue
	  9Rnd_45ACP_Mag
	  FlareWhite_F
	  V_BandollierB_blk
	  30Rnd_45ACP_Mag_SMG_01_Tracer_Green
	  B_Kitbag_cbr
	  arifle_SDAR_F
	  muzzle_snds_L
	  B_AssaultPack_khk
	  H_Beret_ocamo
	  30Rnd_556x45_Stanag
	  11Rnd_45ACP_Mag
	  B_FieldPack_cbr
	  16Rnd_9x21_Mag
	  H_Booniehat_dirty
	  ItemGPS
	  H_Booniehat_indp
	  Exile_Item_Surstromming
	  H_Bandanna_khk
	  Chemlight_blue
	  B_OutdoorPack_blu
	  Exile_Item_Catfood
	  Exile_Item_Catfood
	  H_Beret_grn
	  B_Bergen_blk
	  optic_DMS
	  B_Kitbag_mcamo
	  H_ShemagOpen_tan
	  Exile_Item_GloriousKnakworst
	  B_AssaultPack_khk
	  30Rnd_556x45_Stanag
	  B_FieldPack_oucamo
	  arifle_Katiba_F
	  H_Bandanna_khk
	  V_Chestrig_khk
	  arifle_SDAR_F
	  muzzle_snds_L
	  Chemlight_yellow
	  Chemlight_yellow
	  optic_DMS
	  arifle_Katiba_GL_F
	  hgun_ACPC2_F
	  Chemlight_red
	  Exile_Item_Matches
	  FlareYellow_F
	  Chemlight_yellow
	  hgun_P07_F
	  FlareRed_F
	  B_AssaultPack_rgr
	  Chemlight_yellow
	  Chemlight_red
	*/
	class CivillianLowerClass
	{
		top = 78.32;
		count = 177;
		maximum = 100;
		sum = 17700;
		items[] = 
		{
			{ 2,"Exile_Item_Catfood" },
   { 4,"Exile_Item_PlasticBottleEmpty" },
   { 5.9,"Exile_Item_Surstromming" },
   { 7.6,"Exile_Item_ChristmasTinner" },
   { 9.3,"Exile_Item_SausageGravy" },
   { 11,"Exile_Item_BBQSandwich" },
   { 12.5,"Exile_Item_GloriousKnakworst" },
   { 13.5,"Chemlight_blue" },
   { 14.5,"Chemlight_green" },
   { 15.5,"Chemlight_red" },
   { 16.5,"Chemlight_yellow" },
   { 17.4,"30Rnd_9x21_Mag" },
   { 18.3,"11Rnd_45ACP_Mag" },
   { 19.2,"16Rnd_9x21_Mag" },
   { 20.1,"9Rnd_45ACP_Mag" },
   { 20.9,"hgun_P07_F" },
   { 21.7,"FlareWhite_F" },
   { 22.5,"FlareYellow_F" },
   { 23.3,"FlareGreen_F" },
   { 24.1,"CUP_hgun_glock17_flashlight" },
   { 24.9,"hgun_Rook40_F" },
   { 25.7,"FlareRed_F" },
   { 26.5,"hgun_ACPC2_F" },
   { 27.25,"CUP_15Rnd_9x19_M9" },
   { 28,"B_OutdoorPack_blk" },
   { 28.75,"B_OutdoorPack_tan" },
   { 29.5,"B_OutdoorPack_blu" },
   { 30.2,"CUP_17Rnd_9x19_glock17" },
   { 30.9,"B_HuntingBackpack" },
   { 31.55,"Exile_Item_CookingPot" },
   { 32.15,"B_AssaultPack_khk" },
   { 32.75,"Exile_Item_PlasticBottleFreshWater" },
   { 33.35,"B_AssaultPack_dgtl" },
   { 33.95,"B_AssaultPack_rgr" },
   { 34.55,"B_AssaultPack_sgg" },
   { 35.15,"B_AssaultPack_blk" },
   { 35.75,"B_AssaultPack_cbr" },
   { 36.35,"B_AssaultPack_mcamo" },
   { 36.95,"B_Kitbag_mcamo" },
   { 37.55,"CUP_20Rnd_B_765x17_Ball_M" },
   { 38.15,"B_Kitbag_sgg" },
   { 38.75,"B_Kitbag_cbr" },
   { 39.35,"6Rnd_45ACP_Cylinder" },
   { 39.85,"B_Bergen_rgr" },
   { 40.35,"hgun_Pistol_heavy_02_F" },
   { 40.85,"optic_Aco" },
   { 41.35,"muzzle_snds_acp" },
   { 41.85,"U_C_Poor_shorts_1" },
   { 42.35,"B_Bergen_mcamo" },
   { 42.85,"U_C_Poor_1" },
   { 43.35,"hgun_Pistol_Signal_F" },
   { 43.85,"B_Bergen_blk" },
   { 44.35,"B_FieldPack_blk" },
   { 44.85,"B_FieldPack_ocamo" },
   { 45.35,"B_FieldPack_oucamo" },
   { 45.85,"B_FieldPack_cbr" },
   { 46.35,"hgun_Pistol_heavy_01_F" },
   { 46.85,"B_Bergen_sgg" },
   { 47.35,"U_C_Poor_2" },
   { 47.85,"U_C_HunterBody_grn" },
   { 48.35,"muzzle_snds_L" },
   { 48.85,"optic_ACO_grn" },
   { 49.35,"optic_Aco_smg" },
   { 49.85,"optic_ACO_grn_smg" },
   { 50.35,"optic_Holosight_smg" },
   { 50.75,"U_C_Poloshirt_salmon" },
   { 51.15,"U_C_Poloshirt_stripped" },
   { 51.55,"CUP_30Rnd_9x19_MP5" },
   { 51.95,"U_IG_Guerilla3_1" },
   { 52.35,"CUP_hgun_M9" },
   { 52.75,"Exile_Item_Matches" },
   { 53.15,"acc_flashlight" },
   { 53.55,"U_C_Poloshirt_blue" },
   { 53.95,"Exile_Item_LightBulb" },
   { 54.35,"U_IG_Guerilla1_1" },
   { 54.75,"U_IG_Guerilla2_1" },
   { 55.15,"U_IG_Guerilla2_2" },
   { 55.55,"U_IG_Guerilla2_3" },
   { 55.95,"CUP_64Rnd_9x19_Bizon_M" },
   { 56.35,"U_C_Poloshirt_tricolour" },
   { 56.75,"U_C_Poloshirt_burgundy" },
   { 57.15,"Exile_Item_DuctTape" },
   { 57.55,"U_IG_Guerilla3_2" },
   { 57.95,"Exile_Item_Beer" },
   { 58.35,"30Rnd_45ACP_Mag_SMG_01_Tracer_Green" },
   { 58.75,"30Rnd_45ACP_Mag_SMG_01" },
   { 59.05,"6Rnd_RedSignal_F" },
   { 59.35,"H_Booniehat_mcamo" },
   { 59.65,"H_Booniehat_tan" },
   { 59.95,"optic_MRCO" },
   { 60.25,"hgun_PDW2000_F" },
   { 60.55,"CUP_hgun_SA61" },
   { 60.85,"CUP_smg_bizon" },
   { 61.15,"H_Booniehat_indp" },
   { 61.45,"SMG_01_F" },
   { 61.75,"optic_Holosight" },
   { 62.05,"CUP_smg_MP5A5" },
   { 62.35,"H_Booniehat_grn" },
   { 62.65,"6Rnd_GreenSignal_F" },
   { 62.95,"CUP_smg_EVO" },
   { 63.25,"H_Booniehat_khk" },
   { 63.55,"acc_pointer_IR" },
   { 63.85,"Exile_Item_Energydrink" },
   { 64.15,"H_Booniehat_dirty" },
   { 64.45,"H_Booniehat_dgtl" },
   { 64.75,"H_Booniehat_khk_hs" },
   { 65.05,"SMG_02_F" },
   { 65.3,"ItemGPS" },
   { 65.5,"Exile_Item_SausageGravy_Cooked" },
   { 65.7,"H_Bandanna_gry" },
   { 65.9,"Exile_Item_ChristmasTinner_Cooked" },
   { 66.1,"H_Bandanna_sgg" },
   { 66.3,"H_Bandanna_cbr" },
   { 66.5,"optic_Yorris" },
   { 66.7,"optic_MRD" },
   { 66.9,"H_BandMask_blk" },
   { 67.1,"H_Bandanna_khk_hs" },
   { 67.3,"H_Bandanna_khk" },
   { 67.5,"Exile_Item_Catfood_Cooked" },
   { 67.7,"H_Bandanna_camo" },
   { 67.9,"H_Bandanna_mcamo" },
   { 68.1,"Exile_Item_Surstromming_Cooked" },
   { 68.3,"Exile_Item_GloriousKnakworst_Cooked" },
   { 68.5,"Exile_Item_BBQSandwich_Cooked" },
   { 68.65,"V_HarnessOSpec_gry" },
   { 68.8,"H_Hat_camo" },
   { 68.95,"V_BandollierB_cbr" },
   { 69.1,"V_BandollierB_oli" },
   { 69.25,"CUP_muzzle_snds_M9" },
   { 69.4,"V_HarnessO_brn" },
   { 69.55,"V_BandollierB_khk" },
   { 69.7,"H_Cap_brn_SPECOPS" },
   { 69.85,"V_HarnessOGL_brn" },
   { 70,"H_Cap_tan_specops_US" },
   { 70.15,"H_Cap_khaki_specops_UK" },
   { 70.3,"H_Watchcap_blk" },
   { 70.45,"H_Watchcap_khk" },
   { 70.6,"H_Watchcap_camo" },
   { 70.75,"H_Watchcap_sgg" },
   { 70.9,"H_TurbanO_blk" },
   { 71.05,"V_BandollierB_blk" },
   { 71.2,"Binocular" },
   { 71.35,"Exile_Item_InstaDoc" },
   { 71.5,"V_HarnessOSpec_brn" },
   { 71.65,"V_HarnessOGL_gry" },
   { 71.8,"V_HarnessO_gry" },
   { 71.95,"V_BandollierB_rgr" },
   { 72.05,"Exile_Item_CamoTentKit" },
   { 72.15,"H_Beret_02" },
   { 72.25,"H_Shemag_olive_hs" },
   { 72.35,"H_Beret_brn_SF" },
   { 72.45,"H_ShemagOpen_khk" },
   { 72.55,"V_Chestrig_rgr" },
   { 72.65,"H_Beret_grn_SF" },
   { 72.75,"V_Chestrig_blk" },
   { 72.85,"V_Chestrig_oli" },
   { 72.95,"U_IG_leader" },
   { 73.05,"V_Chestrig_khk" },
   { 73.15,"H_Beret_blk" },
   { 73.25,"H_ShemagOpen_tan" },
   { 73.35,"H_Beret_ocamo" },
   { 73.45,"H_Beret_Colonel" },
   { 73.55,"H_Shemag_olive" },
   { 73.65,"H_Shemag_tan" },
   { 73.75,"H_Shemag_khk" },
   { 73.85,"H_Beret_red" },
   { 73.95,"H_Beret_grn" },
   { 74,"20Rnd_556x45_UW_mag" },
   { 74.05,"U_I_G_resistanceLeader_F" },
   { 74.1,"30Rnd_556x45_Stanag_Tracer_Yellow" },
   { 74.15,"FirstAidKit" },
   { 74.2,"arifle_SDAR_F" },
   { 74.25,"arifle_TRG21_F" },
   { 74.3,"arifle_TRG20_F" },
   { 74.35,"muzzle_snds_M" },
   { 74.4,"V_I_G_resistanceLeader_F" },
   { 74.45,"muzzle_snds_H" },
   { 74.5,"optic_Arco" },
   { 74.55,"optic_Hamr" },
   { 74.6,"30Rnd_556x45_Stanag" },
   { 74.65,"30Rnd_556x45_Stanag_Tracer_Green" },
   { 74.7,"30Rnd_556x45_Stanag_Tracer_Red" },
   { 74.73,"optic_DMS" },
   { 74.74,"optic_Nightstalker" }
		};
	};

	/**
	  Result of 100 rounds:

	  arifle_MX_GL_F
	  6Rnd_RedSignal_F
	  Exile_Item_PlasticBottleEmpty
	  hgun_P07_F
	  Exile_Item_Catfood_Cooked
	  Exile_Item_GloriousKnakworst
	  B_OutdoorPack_tan
	  H_Cap_blk_Raven
	  H_Cap_headphones
	  arifle_SDAR_F
	  H_Cap_blk
	  U_C_Poloshirt_blue
	  30Rnd_65x39_caseless_mag
	  H_Hat_tan
	  Exile_Item_Catfood
	  muzzle_snds_M
	  Exile_Item_GloriousKnakworst
	  acc_flashlight
	  Exile_Item_Catfood
	  U_C_Poloshirt_blue
	  Exile_Item_Surstromming
	  H_Hat_blue
	  H_Cap_press
	  Exile_Item_ChristmasTinner
	  6Rnd_45ACP_Cylinder
	  Exile_Item_SausageGravy
	  Exile_Item_Catfood
	  hgun_Pistol_Signal_F
	  H_Bandanna_surfer
	  H_Cap_red
	  B_HuntingBackpack
	  B_OutdoorPack_blu
	  Exile_Item_SausageGravy
	  U_C_Poloshirt_tricolour
	  H_Hat_brown
	  arifle_Mk20C_F
	  30Rnd_65x39_caseless_green
	  optic_Arco
	  Exile_Item_PlasticBottleEmpty
	  B_OutdoorPack_blu
	  hgun_P07_F
	  16Rnd_9x21_Mag
	  Exile_Item_BBQSandwich
	  optic_MRCO
	  arifle_SDAR_F
	  H_Cap_blu
	  optic_MRCO
	  U_C_Poloshirt_stripped
	  V_TacVest_blk_POLICE
	  Exile_Item_ChristmasTinner
	  Exile_Item_Surstromming
	  30Rnd_556x45_Stanag_Tracer_Yellow
	  30Rnd_65x39_caseless_green_mag_Tracer
	  Exile_Item_GloriousKnakworst
	  6Rnd_GreenSignal_F
	  6Rnd_RedSignal_F
	  U_C_Poloshirt_tricolour
	  hgun_Pistol_Signal_F
	  6Rnd_GreenSignal_F
	  6Rnd_RedSignal_F
	  Exile_Item_BBQSandwich
	  30Rnd_9x21_Mag
	  muzzle_snds_L
	  Exile_Item_PlasticBottleEmpty
	  30Rnd_65x39_caseless_mag
	  30Rnd_9x21_Mag
	  Exile_Item_Surstromming
	  Exile_Item_ChristmasTinner
	  Exile_Item_ChristmasTinner_Cooked
	  6Rnd_45ACP_Cylinder
	  H_Cap_grn
	  U_C_Poloshirt_stripped
	  arifle_Mk20_F
	  H_Bandanna_surfer
	  V_Press_F
	  arifle_MX_F
	  H_Cap_grn
	  Exile_Item_PlasticBottleEmpty
	  B_OutdoorPack_blk
	  Exile_Item_PlasticBottleFreshWater
	  H_Cap_grn
	  H_Hat_brown
	  Exile_Item_ChristmasTinner
	  arifle_MX_GL_F
	  acc_flashlight
	  arifle_MX_GL_F
	  9Rnd_45ACP_Mag
	  Exile_Item_Beer
	  11Rnd_45ACP_Mag
	  6Rnd_GreenSignal_F
	  U_C_Poloshirt_stripped
	  acc_pointer_IR
	  Exile_Item_Catfood
	  U_C_Poloshirt_blue
	  Exile_Item_BBQSandwich
	  Exile_Item_Surstromming
	  30Rnd_556x45_Stanag
	  Exile_Item_ChristmasTinner
	  U_C_Poloshirt_blue
	  arifle_Mk20_F
	*/
	class CivillianUpperClass
	{
		top = 62.22;
		count = 100;
		maximum = 100;
		sum = 10000;
		items[] = 
		{
			{ 2,"Exile_Item_Catfood" },
   { 4,"Exile_Item_PlasticBottleEmpty" },
   { 5.9,"Exile_Item_Surstromming" },
   { 7.6,"Exile_Item_BBQSandwich" },
   { 9.3,"Exile_Item_ChristmasTinner" },
   { 11,"Exile_Item_SausageGravy" },
   { 12.5,"Exile_Item_GloriousKnakworst" },
   { 13.5,"U_C_Poloshirt_blue" },
   { 14.5,"U_C_Poloshirt_burgundy" },
   { 15.5,"U_C_Poloshirt_stripped" },
   { 16.5,"U_C_Poloshirt_tricolour" },
   { 17.5,"U_C_Poloshirt_salmon" },
   { 18.35,"B_OutdoorPack_blk" },
   { 19.2,"B_OutdoorPack_tan" },
   { 20.05,"B_OutdoorPack_blu" },
   { 20.85,"arifle_Mk20_F" },
   { 21.65,"30Rnd_65x39_caseless_mag" },
   { 22.45,"arifle_SDAR_F" },
   { 23.25,"arifle_Mk20C_F" },
   { 24.05,"30Rnd_65x39_caseless_green" },
   { 24.85,"30Rnd_556x45_Stanag" },
   { 25.65,"16Rnd_9x21_Mag" },
   { 26.45,"30Rnd_9x21_Mag" },
   { 27.25,"arifle_TRG21_F" },
   { 28.05,"arifle_TRG20_F" },
   { 28.85,"11Rnd_45ACP_Mag" },
   { 29.6,"CUP_15Rnd_9x19_M9" },
   { 30.3,"hgun_ACPC2_F" },
   { 31,"B_HuntingBackpack" },
   { 31.7,"CUP_17Rnd_9x19_glock17" },
   { 32.4,"9Rnd_45ACP_Mag" },
   { 33.1,"hgun_P07_F" },
   { 33.8,"hgun_Rook40_F" },
   { 34.5,"6Rnd_45ACP_Cylinder" },
   { 35.2,"acc_flashlight" },
   { 35.9,"acc_pointer_IR" },
   { 36.5,"CUP_10x_303_M" },
   { 37.1,"H_Hat_brown" },
   { 37.7,"H_Beret_blk_POLICE" },
   { 38.3,"H_Cap_blk" },
   { 38.9,"CUP_srifle_LeeEnfield" },
   { 39.5,"CUP_20Rnd_B_765x17_Ball_M" },
   { 40.1,"H_Cap_blk_Raven" },
   { 40.7,"H_Cap_blu" },
   { 41.3,"H_Hat_checker" },
   { 41.9,"H_Bandanna_surfer" },
   { 42.5,"optic_MRCO" },
   { 43.1,"H_Cap_headphones" },
   { 43.7,"H_Cap_oli" },
   { 44.3,"H_Cap_press" },
   { 44.9,"H_Cap_red" },
   { 45.5,"H_Cap_tan" },
   { 46.1,"H_Hat_blue" },
   { 46.7,"H_Cap_grn" },
   { 47.3,"H_Hat_grey" },
   { 47.9,"H_Hat_tan" },
   { 48.5,"H_StrawHat" },
   { 49.1,"H_StrawHat_dark" },
   { 49.7,"CUP_hgun_glock17_flashlight" },
   { 50.3,"20Rnd_556x45_UW_mag" },
   { 50.8,"6Rnd_GreenSignal_F" },
   { 51.3,"Exile_Item_PlasticBottleFreshWater" },
   { 51.8,"U_C_Scientist" },
   { 52.3,"6Rnd_RedSignal_F" },
   { 52.8,"U_C_Journalist" },
   { 53.3,"V_Press_F" },
   { 53.8,"hgun_Pistol_heavy_01_F" },
   { 54.3,"30Rnd_556x45_Stanag_Tracer_Red" },
   { 54.8,"hgun_Pistol_heavy_02_F" },
   { 55.3,"30Rnd_65x39_caseless_green_mag_Tracer" },
   { 55.8,"30Rnd_556x45_Stanag_Tracer_Yellow" },
   { 56.3,"CUP_hgun_SA61" },
   { 56.8,"V_Rangemaster_belt" },
   { 57.3,"V_TacVest_blk_POLICE" },
   { 57.8,"30Rnd_556x45_Stanag_Tracer_Green" },
   { 58.3,"U_Rangemaster" },
   { 58.8,"30Rnd_65x39_caseless_mag_Tracer" },
   { 59.2,"optic_Hamr" },
   { 59.6,"optic_Holosight" },
   { 60,"CUP_hgun_M9" },
   { 60.4,"Exile_Item_Beer" },
   { 60.8,"optic_Arco" },
   { 61.15,"hgun_Pistol_Signal_F" },
   { 61.45,"optic_DMS" },
   { 61.75,"Exile_Item_Energydrink" },
   { 62,"muzzle_snds_acp" },
   { 62.25,"muzzle_snds_L" },
   { 62.45,"Exile_Item_GloriousKnakworst_Cooked" },
   { 62.65,"arifle_MX_F" },
   { 62.85,"Exile_Item_SausageGravy_Cooked" },
   { 63.05,"arifle_MX_GL_F" },
   { 63.25,"Exile_Item_ChristmasTinner_Cooked" },
   { 63.45,"Exile_Item_BBQSandwich_Cooked" },
   { 63.65,"arifle_Katiba_F" },
   { 63.85,"Exile_Item_Surstromming_Cooked" },
   { 64.05,"Exile_Item_Catfood_Cooked" },
   { 64.25,"arifle_MXC_F" },
   { 64.4,"muzzle_snds_H" },
   { 64.55,"muzzle_snds_M" },
   { 64.7,"CUP_muzzle_snds_M9" },
   { 64.8,"optic_Yorris" },
   { 64.9,"optic_MRD" },
   { 65,"FirstAidKit" },
   { 65.1,"arifle_MXM_F" },
   { 65.15,"U_OrestesBody" },
   { 65.2,"U_NikosBody" },
   { 65.25,"U_NikosAgedBody" }
		};
	};

	/**
	  Result of 100 rounds:

	  11Rnd_45ACP_Mag
	  Exile_Item_PlasticBottleFreshWater
	  Exile_Item_Catfood
	  hgun_Rook40_F
	  Exile_Item_SausageGravy_Cooked
	  Exile_Item_Surstromming
	  Exile_Item_ChristmasTinner
	  hgun_Pistol_heavy_01_F
	  hgun_Pistol_heavy_02_F
	  SmokeShellPurple
	  hgun_Pistol_heavy_01_F
	  Exile_Item_Surstromming
	  Exile_Item_BBQSandwich
	  6Rnd_RedSignal_F
	  Exile_Item_Catfood
	  Exile_Item_Catfood_Cooked
	  Exile_Item_Surstromming
	  hgun_P07_F
	  Exile_Item_Catfood
	  Exile_Item_Surstromming
	  Exile_Item_Matches
	  SmokeShell
	  11Rnd_45ACP_Mag
	  Exile_Item_Matches
	  9Rnd_45ACP_Mag
	  Exile_Item_PlasticBottleEmpty
	  Exile_Item_Catfood
	  muzzle_snds_acp
	  Exile_Item_CookingPot
	  16Rnd_9x21_Mag
	  hgun_ACPC2_F
	  Exile_Item_ChristmasTinner
	  Exile_Item_PlasticBottleEmpty
	  Exile_Item_SausageGravy
	  SmokeShell
	  hgun_P07_F
	  Exile_Item_BBQSandwich
	  muzzle_snds_L
	  Exile_Item_Catfood
	  Exile_Item_ChristmasTinner
	  hgun_Rook40_F
	  Exile_Item_BBQSandwich
	  Exile_Item_PlasticBottleEmpty
	  30Rnd_9x21_Mag
	  SmokeShellPurple
	  hgun_Pistol_heavy_02_F
	  30Rnd_9x21_Mag
	  Exile_Item_SausageGravy
	  Exile_Item_PlasticBottleFreshWater
	  Exile_Item_Matches
	  Exile_Item_Matches
	  Exile_Item_InstaDoc
	  Exile_Item_Beer
	  Exile_Item_Surstromming
	  Exile_Item_DuctTape
	  Exile_Item_PlasticBottleFreshWater
	  Exile_Item_SausageGravy
	  muzzle_snds_acp
	  Exile_Item_DuctTape
	  Exile_Item_PlasticBottleFreshWater
	  Exile_Item_PlasticBottleEmpty
	  Exile_Item_BBQSandwich
	  Exile_Item_Surstromming_Cooked
	  Exile_Item_Catfood
	  Exile_Item_BBQSandwich
	  Exile_Item_BBQSandwich
	  Exile_Item_Matches
	  Exile_Item_Matches
	  Exile_Item_GloriousKnakworst_Cooked
	  9Rnd_45ACP_Mag
	  16Rnd_9x21_Mag
	  Exile_Item_SausageGravy
	  hgun_ACPC2_F
	  6Rnd_45ACP_Cylinder
	  SmokeShellRed
	  Exile_Item_CookingPot
	  16Rnd_9x21_Mag
	  Exile_Item_Catfood
	  Exile_Item_ChristmasTinner
	  Exile_Item_InstaDoc
	  16Rnd_9x21_Mag
	  SmokeShell
	  Exile_Item_Matches
	  11Rnd_45ACP_Mag
	  hgun_P07_F
	  11Rnd_45ACP_Mag
	  Exile_Item_GloriousKnakworst
	  muzzle_snds_acp
	  Exile_Item_ChristmasTinner
	  Exile_Item_DuctTape
	  Exile_Item_SausageGravy
	  hgun_Rook40_F
	  Exile_Item_Catfood
	  Exile_Item_Surstromming
	  Exile_Item_PlasticBottleEmpty
	  Exile_Item_Matches
	  Exile_Item_GloriousKnakworst
	  Exile_Item_Matches
	  Exile_Item_Surstromming
	  hgun_Rook40_F
	*/
	class Shop
	{
		top = 33.95;
		count = 48;
		maximum = 100;
		sum = 4800;
		items[] = 
		{
			{ 2,"Exile_Item_Catfood" },
   { 4,"Exile_Item_PlasticBottleEmpty" },
   { 5.9,"Exile_Item_Surstromming" },
   { 7.6,"Exile_Item_BBQSandwich" },
   { 9.3,"Exile_Item_SausageGravy" },
   { 11,"Exile_Item_ChristmasTinner" },
   { 12.5,"Exile_Item_GloriousKnakworst" },
   { 13.5,"hgun_P07_F" },
   { 14.5,"hgun_Rook40_F" },
   { 15.5,"hgun_ACPC2_F" },
   { 16.3,"11Rnd_45ACP_Mag" },
   { 17.1,"16Rnd_9x21_Mag" },
   { 17.9,"30Rnd_9x21_Mag" },
   { 18.7,"9Rnd_45ACP_Mag" },
   { 19.5,"Exile_Item_LightBulb" },
   { 20.25,"CUP_15Rnd_9x19_M9" },
   { 20.95,"6Rnd_45ACP_Cylinder" },
   { 21.65,"CUP_17Rnd_9x19_glock17" },
   { 22.35,"hgun_Pistol_heavy_01_F" },
   { 23.05,"hgun_Pistol_heavy_02_F" },
   { 23.7,"Exile_Item_CookingPot" },
   { 24.3,"CUP_20Rnd_B_765x17_Ball_M" },
   { 24.9,"6Rnd_RedSignal_F" },
   { 25.5,"6Rnd_GreenSignal_F" },
   { 26.1,"CUP_hgun_glock17_flashlight" },
   { 26.6,"SmokeShellOrange" },
   { 27.1,"SmokeShell" },
   { 27.6,"SmokeShellRed" },
   { 28.1,"SmokeShellGreen" },
   { 28.6,"SmokeShellYellow" },
   { 29.1,"Exile_Item_PlasticBottleFreshWater" },
   { 29.6,"SmokeShellPurple" },
   { 30.1,"SmokeShellBlue" },
   { 30.6,"hgun_Pistol_Signal_F" },
   { 31.1,"CUP_hgun_SA61" },
   { 31.6,"Exile_Item_InstaDoc" },
   { 32,"CUP_hgun_M9" },
   { 32.4,"Exile_Item_Matches" },
   { 32.8,"Exile_Item_Beer" },
   { 33.2,"Exile_Item_DuctTape" },
   { 33.5,"Exile_Item_Energydrink" },
   { 33.75,"muzzle_snds_L" },
   { 34,"ItemGPS" },
   { 34.25,"muzzle_snds_acp" },
   { 34.45,"Exile_Item_Catfood_Cooked" },
   { 34.65,"Exile_Item_Surstromming_Cooked" },
   { 34.85,"Exile_Item_SausageGravy_Cooked" },
   { 35.05,"Exile_Item_GloriousKnakworst_Cooked" },
   { 35.25,"Exile_Item_BBQSandwich_Cooked" },
   { 35.45,"Exile_Item_ChristmasTinner_Cooked" },
   { 35.6,"CUP_muzzle_snds_M9" },
   { 35.75,"Binocular" },
   { 35.85,"FirstAidKit" },
   { 35.95,"optic_Yorris" },
   { 36.05,"optic_MRD" },
   { 36.15,"Exile_Item_CamoTentKit" }
		};
	};

	/**
	  Result of 100 rounds:

	  Exile_Item_ExtensionCord
	  Exile_Item_LightBulb
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterFull
	  Exile_Item_PortableGeneratorKit
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_ExtensionCord
	  Exile_Item_ExtensionCord
	  Exile_Item_LightBulb
	  Exile_Item_ExtensionCord
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_JunkMetal
	  Exile_Melee_Axe
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_Matches
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterEmpty
	  Exile_Melee_Axe
	  Exile_Item_JunkMetal
	  Exile_Item_ExtensionCord
	  Exile_Melee_Axe
	  Exile_Item_Matches
	  Exile_Melee_Axe
	  Exile_Melee_Axe
	  Exile_Item_DuctTape
	  Exile_Item_ExtensionCord
	  Exile_Item_Matches
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_JunkMetal
	  Exile_Item_Matches
	  Exile_Item_FuelCanisterFull
	  Exile_Item_DuctTape
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterFull
	  Exile_Melee_Axe
	  Exile_Item_Matches
	  Exile_Item_LightBulb
	  Exile_Item_ExtensionCord
	  Exile_Item_Matches
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_LightBulb
	  Exile_Melee_Axe
	  Exile_Melee_Axe
	  Exile_Item_Rope
	  Exile_Item_MetalBoard
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_MetalBoard
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_DuctTape
	  Exile_Item_MetalBoard
	  Exile_Item_LightBulb
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterFull
	  Exile_Item_PortableGeneratorKit
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Melee_Axe
	  Exile_Melee_Axe
	  Exile_Item_FloodLightKit
	  Exile_Item_Matches
	  Exile_Item_Matches
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_ExtensionCord
	  Exile_Item_JunkMetal
	  Exile_Item_JunkMetal
	  Exile_Item_Matches
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_Rope
	  Exile_Item_Matches
	  Exile_Item_JunkMetal
	  Exile_Melee_Axe
	  Exile_Item_ExtensionCord
	  Exile_Item_Matches
	  Exile_Item_ExtensionCord
	  Exile_Item_FuelCanisterFull
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_MetalBoard
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterEmpty
	  Exile_Melee_Axe
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterFull
	  Exile_Melee_Axe
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	*/
	class Industrial
	{
		top = 2.85;
		count = 12;
		maximum = 100;
		sum = 1200;
		items[] = 
		{
			{0.5, "Exile_Melee_Axe"},
			{1, "Exile_Item_FuelCanisterEmpty"},
			{1.4, "Exile_Item_FuelCanisterFull"},
			{1.7, "Exile_Item_Matches"},
			{2, "Exile_Item_ExtensionCord"},
			{2.25, "Exile_Item_JunkMetal"},
			{2.45, "Exile_Item_LightBulb"},
			{2.55, "Exile_Item_Rope"},
			{2.65, "Exile_Item_MetalBoard"},
			{2.75, "Exile_Item_DuctTape"},
			{2.8, "Exile_Item_PortableGeneratorKit"},
			{2.85, "Exile_Item_FloodLightKit"}
		};
	};

	/**
	  Result of 100 rounds:

	  Exile_Item_JunkMetal
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_JunkMetal
	  Exile_Item_JunkMetal
	  Exile_Item_LightBulb
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_LightBulb
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_DuctTape
	  Exile_Item_JunkMetal
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterFull
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_LightBulb
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_LightBulb
	  Exile_Item_MetalBoard
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_MetalBoard
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_DuctTape
	  Exile_Item_MetalBoard
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterFull
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_JunkMetal
	  Exile_Item_LightBulb
	  Exile_Item_JunkMetal
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_MetalBoard
	  Exile_Item_JunkMetal
	  Exile_Item_LightBulb
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterFull
	  Exile_Item_JunkMetal
	  Exile_Item_FuelCanisterFull
	  Exile_Item_DuctTape
	  Exile_Item_FuelCanisterFull
	  Exile_Item_MetalBoard
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterEmpty
	  Exile_Item_FuelCanisterFull
	*/
	class VehicleService
	{
		top = 1.55;
		count = 6;
		maximum = 100;
		sum = 600;
		items[] = 
		{
			{0.5, "Exile_Item_FuelCanisterEmpty"},
			{0.9, "Exile_Item_FuelCanisterFull"},
			{1.15, "Exile_Item_JunkMetal"},
			{1.35, "Exile_Item_LightBulb"},
			{1.45, "Exile_Item_MetalBoard"},
			{1.55, "Exile_Item_DuctTape"}
		};
	};

	/**
	  Result of 100 rounds:

	  30Rnd_65x39_caseless_mag
	  H_PilotHelmetFighter_O
	  arifle_Katiba_F
	  H_MilCap_blue
	  3Rnd_SmokeOrange_Grenade_shell
	  H_HelmetB_sand
	  V_PlateCarrierIAGL_dgtl
	  H_HelmetCrew_I
	  LMG_Zafir_F
	  U_I_HeliPilotCoveralls
	  H_HelmetCrew_I
	  V_PlateCarrierGL_rgr
	  100Rnd_65x39_caseless_mag
	  1Rnd_SmokeRed_Grenade_shell
	  150Rnd_93x64_Mag
	  3Rnd_UGL_FlareYellow_F
	  V_PlateCarrierIA2_dgtl
	  U_B_CombatUniform_mcam
	  150Rnd_93x64_Mag
	  H_HelmetB_black
	  V_Rangemaster_belt
	  optic_LRPS
	  B_AssaultPack_sgg
	  U_B_CombatUniform_mcam_tshirt
	  optic_MRCO
	  arifle_MX_F
	  150Rnd_93x64_Mag
	  srifle_LRR_F
	  B_Kitbag_cbr
	  V_TacVest_camo
	  100Rnd_65x39_caseless_mag_Tracer
	  V_PlateCarrierIA1_dgtl
	  acc_flashlight
	  H_HelmetB_snakeskin
	  1Rnd_SmokeOrange_Grenade_shell
	  arifle_MX_SW_Black_F
	  H_HelmetSpecB_paint1
	  arifle_MXM_Black_F
	  Binocular
	  V_PlateCarrierIA1_dgtl
	  arifle_MXC_F
	  H_HelmetSpecB_blk
	  arifle_TRG20_F
	  V_TacVestCamo_khk
	  UGL_FlareWhite_F
	  B_AssaultPack_khk
	  30Rnd_556x45_Stanag
	  150Rnd_762x54_Box
	  H_PilotHelmetHeli_O
	  U_B_CombatUniform_mcam_tshirt
	  V_Rangemaster_belt
	  V_RebreatherIR
	  5Rnd_127x108_Mag
	  H_MilCap_mcamo
	  7Rnd_408_Mag
	  H_PilotHelmetFighter_I
	  H_HelmetB_snakeskin
	  arifle_MX_GL_Black_F
	  H_BandMask_khk
	  H_PilotHelmetFighter_I
	  arifle_TRG20_F
	  H_HelmetIA
	  3Rnd_SmokePurple_Grenade_shell
	  Binocular
	  100Rnd_65x39_caseless_mag
	  U_B_CTRG_3
	  B_OutdoorPack_blu
	  B_OutdoorPack_blk
	  U_O_CombatUniform_oucamo
	  V_TacVest_blk
	  V_TacVest_camo
	  150Rnd_762x54_Box
	  arifle_Mk20C_F
	  B_Kitbag_sgg
	  U_I_CombatUniform
	  30Rnd_65x39_caseless_mag_Tracer
	  V_TacVest_camo
	  Binocular
	  H_HelmetIA_net
	  V_RebreatherB
	  B_AssaultPack_dgtl
	  1Rnd_SmokeOrange_Grenade_shell
	  arifle_Katiba_GL_F
	  30Rnd_65x39_caseless_mag
	  U_B_CombatUniform_mcam
	  30Rnd_65x39_caseless_mag
	  H_HelmetB_paint
	  arifle_MX_Black_F
	  V_PlateCarrierIA1_dgtl
	  7Rnd_408_Mag
	  H_HelmetB_grass
	  arifle_MXC_F
	  150Rnd_93x64_Mag
	  V_PlateCarrierIA2_dgtl
	  H_HelmetB_light_desert
	  V_Rangemaster_belt
	  H_HelmetSpecB
	  arifle_Katiba_GL_F
	  H_HelmetB_black
	  acc_pointer_IR
	*/
	class Military
	{
		top = 94.13;
		count = 220;
		maximum = 100;
		sum = 22000;
		items[] = 
		{
   { 0.9,"U_B_CombatUniform_mcam_worn" },
   { 1.75,"CUP_srifle_Mk12SPR_LeupoldM3LR" },
   { 2.5,"CUP_arifle_G36C_camo" },
   { 3.25,"srifle_DMR_01_F" },
   { 3.95,"V_PlateCarrier2_rgr" },
   { 4.65,"Binocular" },
   { 5.35,"V_Rangemaster_belt" },
   { 6.05,"H_HelmetB_light_sand" },
   { 6.75,"H_HelmetB_paint" },
   { 7.45,"H_MilCap_rucamo" },
   { 8.15,"V_PlateCarrier1_rgr" },
   { 8.85,"H_MilCap_dgtl" },
   { 9.55,"U_B_CombatUniform_mcam_vest" },
   { 10.25,"H_HelmetB" },
   { 10.95,"H_HelmetB_light_black" },
   { 11.65,"CUP_srifle_CZ550" },
   { 12.35,"V_PlateCarrier3_rgr" },
   { 13.05,"H_HelmetB_light" },
   { 13.75,"arifle_MX_F" },
   { 14.45,"H_HelmetB_plain_blk" },
   { 15.15,"B_OutdoorPack_blu" },
   { 15.85,"CUP_arifle_M16A2" },
   { 16.55,"V_PlateCarrierIA1_dgtl" },
   { 17.25,"V_PlateCarrierIAGL_dgtl" },
   { 17.95,"arifle_TRG20_F" },
   { 18.65,"V_PlateCarrier1_blk" },
   { 19.35,"V_PlateCarrierIA2_dgtl" },
   { 20.05,"100Rnd_65x39_caseless_mag" },
   { 20.75,"U_B_CTRG_1" },
   { 21.45,"H_HelmetB_light_grass" },
   { 22.15,"H_MilCap_ocamo" },
   { 22.85,"H_HelmetSpecB" },
   { 23.55,"H_MilCap_oucamo" },
   { 24.25,"H_HelmetSpecB_paint1" },
   { 24.95,"H_HelmetB_sand" },
   { 25.65,"H_HelmetSpecB_paint2" },
   { 26.35,"B_OutdoorPack_tan" },
   { 27.05,"arifle_Katiba_F" },
   { 27.75,"V_PlateCarrierGL_rgr" },
   { 28.45,"U_B_CombatUniform_mcam_tshirt" },
   { 29.15,"U_B_CTRG_3" },
   { 29.85,"arifle_TRG21_F" },
   { 30.55,"U_B_CTRG_2" },
   { 31.25,"H_HelmetB_light_desert" },
   { 31.95,"H_HelmetB_light_snakeskin" },
   { 32.65,"H_MilCap_mcamo" },
   { 33.35,"H_MilCap_blue" },
   { 34.05,"V_PlateCarrierSpec_rgr" },
   { 34.75,"H_HelmetSpecB_blk" },
   { 35.45,"H_HelmetIA" },
   { 36.15,"H_HelmetIA_net" },
   { 36.85,"CUP_srifle_M14" },
   { 37.55,"H_HelmetIA_camo" },
   { 38.25,"acc_flashlight" },
   { 38.95,"H_HelmetB_grass" },
   { 39.65,"H_HelmetB_snakeskin" },
   { 40.35,"H_HelmetB_desert" },
   { 41.05,"H_HelmetB_black" },
   { 41.75,"150Rnd_762x54_Box" },
   { 42.45,"CUP_srifle_LeeEnfield" },
   { 43.15,"B_OutdoorPack_blk" },
   { 43.8,"srifle_DMR_03_khaki_F" },
   { 44.45,"srifle_EBR_F" },
   { 45.1,"srifle_DMR_03_woodland_F" },
   { 45.75,"CUP_arifle_M16A2_gl" },
   { 46.4,"srifle_DMR_03_F" },
   { 47,"100Rnd_65x39_caseless_mag_Tracer" },
   { 47.6,"CUP_arifle_M4A1_camo" },
   { 48.2,"CUP_arifle_M4A1" },
   { 48.8,"150Rnd_762x54_Box_Tracer" },
   { 49.4,"arifle_Katiba_GL_F" },
   { 50,"arifle_MXC_F" },
   { 50.6,"arifle_SDAR_F" },
   { 51.2,"arifle_Mk20_F" },
   { 51.8,"arifle_Mk20C_F" },
   { 52.4,"B_HuntingBackpack" },
   { 53,"CUP_arifle_L85A2" },
   { 53.6,"acc_pointer_IR" },
   { 54.15,"CUP_srifle_DMR" },
   { 54.7,"CUP_200Rnd_TE4_Red_Tracer_556x45_M249" },
   { 55.2,"CUP_lmg_M249" },
   { 55.7,"optic_Hamr" },
   { 56.2,"arifle_MX_SW_Black_F" },
   { 56.7,"optic_Arco" },
   { 57.2,"V_TacVest_oli" },
   { 57.7,"Exile_Item_InstaDoc" },
   { 58.2,"LMG_Zafir_F" },
   { 58.7,"U_B_CombatUniform_mcam" },
   { 59.2,"30Rnd_556x45_Stanag" },
   { 59.7,"B_AssaultPack_khk" },
   { 60.2,"CUP_optic_RCO" },
   { 60.7,"B_AssaultPack_rgr" },
   { 61.2,"arifle_MX_SW_F" },
   { 61.7,"B_AssaultPack_blk" },
   { 62.2,"CUP_optic_CompM2_WoodLand2" },
   { 62.7,"ItemRadio" },
   { 63.2,"CUP_optic_CompM2_WoodLand" },
   { 63.7,"30Rnd_65x39_caseless_mag" },
   { 64.2,"V_TacVest_khk" },
   { 64.7,"LMG_Mk200_F" },
   { 65.2,"CUP_optic_CompM2_Black" },
   { 65.7,"V_TacVestCamo_khk" },
   { 66.2,"CUP_optic_ACOG" },
   { 66.7,"NVGoggles" },
   { 67.2,"CUP_optic_Eotech533" },
   { 67.7,"V_TacVestIR_blk" },
   { 68.2,"CUP_optic_HoloWdl" },
   { 68.7,"V_TacVest_brn" },
   { 69.2,"B_AssaultPack_dgtl" },
   { 69.7,"CUP_arifle_AK74" },
   { 70.2,"V_TacVest_blk" },
   { 70.7,"CUP_arifle_AKM" },
   { 71.2,"V_TacVest_camo" },
   { 71.7,"optic_Holosight" },
   { 72.2,"optic_MRCO" },
   { 72.7,"CUP_optic_HoloBlack" },
   { 73.2,"CUP_lmg_L7A2" },
   { 73.7,"30Rnd_65x39_caseless_green" },
   { 74.2,"B_AssaultPack_mcamo" },
   { 74.7,"B_AssaultPack_cbr" },
   { 75.2,"CUP_lmg_M240" },
   { 75.7,"B_AssaultPack_sgg" },
   { 76.15,"CUP_arifle_Mk17_STD" },
   { 76.55,"CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M" },
   { 76.95,"20Rnd_762x51_Mag" },
   { 77.35,"30Rnd_65x39_caseless_green_mag_Tracer" },
   { 77.75,"CUP_arifle_AKS" },
   { 78.15,"30Rnd_65x39_caseless_mag_Tracer" },
   { 78.55,"CUP_30Rnd_545x39_AK_M" },
   { 78.95,"H_HelmetCrew_B" },
   { 79.35,"CUP_srifle_M110" },
   { 79.75,"H_HelmetCrew_O" },
   { 80.15,"CUP_arifle_G36C" },
   { 80.55,"H_HelmetCrew_I" },
   { 80.95,"30Rnd_556x45_Stanag_Tracer_Yellow" },
   { 81.35,"CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M" },
   { 81.75,"B_Kitbag_sgg" },
   { 82.15,"CUP_64Rnd_Red_Tracer_9x19_Bizon_M" },
   { 82.55,"CUP_30Rnd_762x39_AK47_M" },
   { 82.95,"B_Kitbag_mcamo" },
   { 83.35,"ItemGPS" },
   { 83.75,"CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M" },
   { 84.15,"CUP_30Rnd_TE1_White_Tracer_545x39_AK_M" },
   { 84.55,"CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M" },
   { 84.95,"CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M" },
   { 85.35,"CUP_64Rnd_9x19_Bizon_M" },
   { 85.75,"CUP_64Rnd_Green_Tracer_9x19_Bizon_M" },
   { 86.15,"B_Kitbag_cbr" },
   { 86.55,"30Rnd_556x45_Stanag_Tracer_Red" },
   { 86.95,"30Rnd_556x45_Stanag_Tracer_Green" },
   { 87.35,"CUP_20Rnd_762x51_FNFAL_M" },
   { 87.75,"10Rnd_762x51_Mag" },
   { 88.15,"CUP_arifle_CZ805_A2" },
   { 88.55,"CUP_5x_22_LR_17_HMR_M" },
   { 88.9,"1Rnd_SmokeBlue_Grenade_shell" },
   { 89.25,"UGL_FlareYellow_F" },
   { 89.6,"arifle_MX_GL_F" },
   { 89.95,"CUP_arifle_FNFAL" },
   { 90.3,"UGL_FlareWhite_F" },
   { 90.65,"optic_SOS" },
   { 91,"UGL_FlareRed_F" },
   { 91.35,"U_I_HeliPilotCoveralls" },
   { 91.7,"UGL_FlareGreen_F" },
   { 92.05,"1Rnd_SmokeYellow_Grenade_shell" },
   { 92.4,"U_O_PilotCoveralls" },
   { 92.75,"1Rnd_SmokePurple_Grenade_shell" },
   { 93.1,"U_B_HeliPilotCoveralls" },
   { 93.45,"1Rnd_SmokeGreen_Grenade_shell" },
   { 93.8,"U_I_CombatUniform_shortsleeve" },
   { 94.15,"1Rnd_Smoke_Grenade_shell" },
   { 94.5,"U_I_CombatUniform_tshirt" },
   { 94.85,"SmokeShellPurple" },
   { 95.2,"U_I_CombatUniform" },
   { 95.55,"SmokeShellYellow" },
   { 95.9,"SmokeShellGreen" },
   { 96.25,"SmokeShellRed" },
   { 96.6,"SmokeShell" },
   { 96.95,"SmokeShellBlue" },
   { 97.3,"SmokeShellOrange" },
   { 97.65,"U_B_PilotCoveralls" },
   { 98,"1Rnd_SmokeOrange_Grenade_shell" },
   { 98.35,"1Rnd_SmokeRed_Grenade_shell" },
   { 98.7,"U_I_pilotCoveralls" },
   { 99.05,"optic_LRPS" },
   { 99.4,"optic_DMS" },
   { 99.75,"20Rnd_556x45_UW_mag" },
   { 100.05,"H_PilotHelmetFighter_I" },
   { 100.35,"1Rnd_HE_Grenade_shell" },
   { 100.65,"130Rnd_338_Mag" },
   { 100.95,"CUP_arifle_G36A" },
   { 101.25,"CUP_20Rnd_TE1_White_Tracer_762x51_M110" },
   { 101.55,"H_PilotHelmetFighter_O" },
   { 101.85,"CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110" },
   { 102.15,"H_PilotHelmetFighter_B" },
   { 102.45,"H_CrewHelmetHeli_I" },
   { 102.75,"CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249" },
   { 103.05,"arifle_MXM_F" },
   { 103.35,"arifle_TRG21_GL_F" },
   { 103.65,"H_CrewHelmetHeli_B" },
   { 103.95,"arifle_Mk20_GL_F" },
   { 104.25,"150Rnd_93x64_Mag" },
   { 104.55,"H_PilotHelmetHeli_I" },
   { 104.85,"CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR" },
   { 105.15,"CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR" },
   { 105.45,"CUP_20Rnd_762x51_B_SCAR" },
   { 105.75,"V_RebreatherB" },
   { 106.05,"V_RebreatherIR" },
   { 106.35,"V_RebreatherIA" },
   { 106.65,"CUP_20Rnd_TE1_Green_Tracer_762x51_M110" },
   { 106.95,"H_CrewHelmetHeli_O" },
   { 107.25,"CUP_20Rnd_762x51_B_M110" },
   { 107.55,"CUP_20Rnd_TE1_Red_Tracer_762x51_M110" },
   { 107.85,"U_B_SpecopsUniform_sgg" },
   { 108.15,"H_PilotHelmetHeli_B" },
   { 108.45,"H_PilotHelmetHeli_O" },
   { 108.7,"U_O_Wetsuit" },
   { 108.95,"H_BandMask_khk" },
   { 109.2,"MiniGrenade" },
   { 109.45,"CUP_arifle_Mk20" },
   { 109.7,"HandGrenade" },
   { 109.95,"U_B_Wetsuit" },
   { 110.2,"muzzle_snds_B" },
   { 110.45,"muzzle_snds_H" },
   { 110.7,"H_BandMask_reaper" },
   { 110.95,"7Rnd_408_Mag" },
   { 111.2,"5Rnd_127x108_Mag" },
   { 111.45,"muzzle_snds_M" },
   { 111.7,"H_BandMask_demon" },
   { 111.95,"U_I_Wetsuit" },
   { 112.2,"H_HelmetB_camo" },
   { 112.4,"arifle_MX_GL_Black_F" },
   { 112.6,"U_O_OfficerUniform_ocamo" },
   { 112.8,"B_FieldPack_ocamo" },
   { 113,"U_I_OfficerUniform" },
   { 113.2,"B_FieldPack_cbr" },
   { 113.4,"B_FieldPack_oucamo" },
   { 113.6,"arifle_MX_Black_F" },
   { 113.8,"arifle_MXC_Black_F" },
   { 114,"arifle_MXM_Black_F" },
   { 114.2,"B_FieldPack_blk" },
   { 114.35,"3Rnd_SmokeOrange_Grenade_shell" },
   { 114.5,"U_O_SpecopsUniform_blk" },
   { 114.65,"3Rnd_UGL_FlareWhite_F" },
   { 114.8,"U_O_CombatUniform_ocamo" },
   { 114.95,"U_I_GhillieSuit" },
   { 115.1,"3Rnd_SmokeRed_Grenade_shell" },
   { 115.25,"U_O_GhillieSuit" },
   { 115.4,"3Rnd_SmokeBlue_Grenade_shell" },
   { 115.55,"U_B_GhillieSuit" },
   { 115.7,"5Rnd_127x108_APDS_Mag" },
   { 115.85,"3Rnd_Smoke_Grenade_shell" },
   { 116,"B_Bergen_blk" },
   { 116.15,"B_Bergen_rgr" },
   { 116.3,"B_Bergen_mcamo" },
   { 116.45,"B_Bergen_sgg" },
   { 116.6,"3Rnd_UGL_FlareGreen_F" },
   { 116.75,"3Rnd_UGL_FlareRed_F" },
   { 116.9,"3Rnd_SmokeYellow_Grenade_shell" },
   { 117.05,"3Rnd_SmokePurple_Grenade_shell" },
   { 117.2,"U_O_CombatUniform_oucamo" },
   { 117.35,"3Rnd_HE_Grenade_shell" },
   { 117.5,"3Rnd_UGL_FlareYellow_F" },
   { 117.65,"U_O_SpecopsUniform_ocamo" },
   { 117.8,"3Rnd_SmokeGreen_Grenade_shell" },
   { 117.9,"CUP_10Rnd_127x99_m107" },
   { 118,"srifle_DMR_04_F" },
   { 118.1,"CUP_30Rnd_9x19_MP5" },
   { 118.2,"CUP_5Rnd_127x99_as50_M" },
   { 118.3,"CUP_10x_303_M" },
   { 118.4,"H_HelmetO_oucamo" },
   { 118.5,"H_HelmetLeaderO_oucamo" },
   { 118.6,"CUP_15Rnd_9x19_M9" },
   { 118.7,"H_HelmetSpecO_ocamo" },
   { 118.8,"H_HelmetSpecO_blk" },
   { 118.9,"CUP_17Rnd_9x19_glock17" },
   { 119,"H_HelmetO_ocamo" },
   { 119.1,"V_PlateCarrierL_CTRG" },
   { 119.2,"V_PlateCarrierH_CTRG" },
   { 119.3,"H_HelmetLeaderO_ocamo" },
   { 119.4,"CUP_5Rnd_86x70_L115A1" },
   { 119.49,"srifle_DMR_05_blk_F" },
   { 119.56,"srifle_DMR_02_F" },
   { 119.61,"CUP_srifle_AWM_wdl" },
   { 119.66,"U_B_FullGhillie_ard" },
   { 119.71,"B_Carryall_mcamo" },
   { 119.76,"U_B_FullGhillie_sard" },
   { 119.81,"B_Carryall_ocamo" },
   { 119.86,"B_Carryall_cbr" },
   { 119.91,"CUP_srifle_AWM_des" },
   { 119.96,"srifle_LRR_F" },
   { 120.01,"srifle_GM6_F" },
   { 120.06,"CUP_srifle_M107_Base" },
   { 120.11,"U_B_FullGhillie_lsh" },
	{120.13,"CUP_launch_RPG7V"  },
	{120.18,"CUP_PG7V_M"},
	{120.19,"CUP_launch_M136"},
	{120.20,"CUP_M136_M"}	
		};
	};

	/**
	  Result of 100 rounds:

	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	  Exile_Item_InstaDoc
	*/
	class Medical
	{
		top = 1;
		count = 1;
		maximum = 100;
		sum = 100;
		items[] = 
		{
			{1, "Exile_Item_InstaDoc"}
		};
	};

	/**
	  Result of 100 rounds:

	  HandGrenade
	  5Rnd_127x108_APDS_Mag
	  B_Carryall_mcamo
	  NVGoggles
	  ItemGPS
	  acc_flashlight
	  srifle_DMR_01_F
	  srifle_DMR_01_F
	  acc_pointer_IR
	  optic_LRPS
	  5Rnd_127x108_Mag
	  20Rnd_762x51_Mag
	  acc_pointer_IR
	  optic_LRPS
	  5Rnd_127x108_APDS_Mag
	  ItemRadio
	  Rangefinder
	  7Rnd_408_Mag
	  10Rnd_762x51_Mag
	  Binocular
	  Exile_Item_InstaDoc
	  5Rnd_127x108_APDS_Mag
	  srifle_GM6_F
	  srifle_GM6_F
	  optic_DMS
	  acc_pointer_IR
	  acc_flashlight
	  Rangefinder
	  optic_DMS
	  acc_flashlight
	  srifle_EBR_F
	  B_Carryall_khk
	  NVGoggles
	  Laserdesignator
	  Binocular
	  20Rnd_762x51_Mag
	  acc_flashlight
	  optic_LRPS
	  srifle_EBR_F
	  srifle_EBR_F
	  20Rnd_762x51_Mag
	  srifle_LRR_F
	  20Rnd_762x51_Mag
	  optic_DMS
	  srifle_LRR_F
	  10Rnd_762x51_Mag
	  srifle_DMR_01_F
	  Exile_Item_InstaDoc
	  srifle_LRR_F
	  srifle_LRR_F
	  Binocular
	  5Rnd_127x108_APDS_Mag
	  B_Carryall_ocamo
	  Laserdesignator
	  srifle_DMR_01_F
	  srifle_DMR_01_F
	  optic_SOS
	  10Rnd_762x51_Mag
	  optic_LRPS
	  acc_flashlight
	  B_Carryall_mcamo
	  5Rnd_127x108_APDS_Mag
	  optic_SOS
	  srifle_EBR_F
	  Rangefinder
	  7Rnd_408_Mag
	  ItemRadio
	  10Rnd_762x51_Mag
	  srifle_DMR_01_F
	  srifle_LRR_F
	  acc_flashlight
	  HandGrenade
	  5Rnd_127x108_Mag
	  20Rnd_762x51_Mag
	  optic_DMS
	  optic_DMS
	  srifle_LRR_F
	  ItemRadio
	  srifle_DMR_01_F
	  5Rnd_127x108_APDS_Mag
	  acc_flashlight
	  5Rnd_127x108_Mag
	  ItemGPS
	  optic_LRPS
	  srifle_LRR_F
	  Rangefinder
	  srifle_EBR_F
	  ItemGPS
	  NVGoggles
	  srifle_DMR_01_F
	  srifle_DMR_01_F
	  Exile_Item_InstaDoc
	  B_Carryall_khk
	  optic_SOS
	  srifle_EBR_F
	  7Rnd_408_Mag
	  5Rnd_127x108_Mag
	  20Rnd_762x51_Mag
	  srifle_LRR_F
	  optic_SOS
	*/
	class Tourist
	{
		top = 14.85;
		count = 30;
		maximum = 100;
		sum = 3000;
		items[] = 
		{
			{0.8, "srifle_EBR_F"},
			{1.6, "srifle_DMR_01_F"},
			{2.4, "Binocular"},
			{3.15, "Rangefinder"},
			{3.85, "optic_LRPS"},
			{4.55, "srifle_LRR_F"},
			{5.25, "srifle_GM6_F"},
			{5.95, "muzzle_snds_B"},
			{6.65, "acc_flashlight"},
			{7.35, "acc_pointer_IR"},
			{8.05, "optic_DMS"},
			{8.75, "optic_SOS"},
			{9.35, "20Rnd_762x51_Mag"},
			{9.95, "10Rnd_762x51_Mag"},
			{10.45, "5Rnd_127x108_Mag"},
			{10.95, "7Rnd_408_Mag"},
			{11.45, "Exile_Item_InstaDoc"},
			{11.95, "NVGoggles"},
			{12.45, "ItemRadio"},
			{12.95, "Laserdesignator"},
			{13.35, "5Rnd_127x108_APDS_Mag"},
			{13.75, "ItemGPS"},
			{14, "MiniGrenade"},
			{14.25, "HandGrenade"},
			{14.35, "B_Carryall_ocamo"},
			{14.45, "B_Carryall_oucamo"},
			{14.55, "B_Carryall_mcamo"},
			{14.65, "B_Carryall_oli"},
			{14.75, "B_Carryall_khk"},
			{14.85, "B_Carryall_cbr"}
		};
	};

};

class CfgSettings
{
	///////////////////////////////////////////////////////////////////////
	// GARBAGE COLLECTOR
	///////////////////////////////////////////////////////////////////////
	class GarbageCollector
	{
		/*
		* This number defines after how many minutes (+1..5 minutes imprecision) 
		* a corpse, vehicle wreck or dropped items should despawn.
        *
        * These things will despawn after despawnAfterMinutes time, but only
        * if there is no player within despawnRadius. If forceDespawnAfterMinutes
        * exceeded, it will despawn anyways.
		*/
		despawnAfterMinutes = 25;
		forceDespawnAfterMinutes = 45;
		despawnRadius = 40000;
	};

	///////////////////////////////////////////////////////////////////////
	// RESPECT, YO
	///////////////////////////////////////////////////////////////////////
	class Respect
	{
		/**
		* Defines the factor of respect you gain for every pop tab in revenue
		*
		* Default: Get 1 respect for every 10 pop tabs 
		*/
		tradingRespectFactor = 0.1;

		/**
		* Defines the amount of respect earned/lost for certain types of frags
		*/
		class Frags
		{
			bambi = -500;			// Bambi slayers
			friendlyFire = -100;	// For party members
			standard = 100;			// Normal kill
			humiliation = 300;		// Axe
			passenger = 400;		// Out of car/chopper/boat
			roadKill = 500;			// :)
		};

		class Bonus
		{
			// Bonus per full 100m 
			per100mDistance = 10;

			// First blood after server restart
			firstBlood = 100;

			/*
				Example with killstreak = 50

				Frag  Factor   Bonus
				2    * 50      +100
				3    * 50      +150
				4    * 50      +200
				5    * 50      +250
			*/
			killStreak = 50;

			// Kills within this amount of seconds stack (default: 2 minutes)
			killStreakTimeout = 120;
		};
	};

	///////////////////////////////////////////////////////////////////////
	// KILLFEED MAN!
	///////////////////////////////////////////////////////////////////////

	class KillFeed
	{
		// Shows a kill feed for well kills
		showKillFeed = 0;
	};

	///////////////////////////////////////////////////////////////////////
	// PLAYER SPAWN CONFIGURATION
	///////////////////////////////////////////////////////////////////////
	class BambiSettings
	{
		/**
		 * Loadout of new bambi players
		 *
		 * (They will always spawn with a bambi overall - you cannot 
		 * change the loadout uniform)
		 */
		loadOut[] = 
		{
			"ItemCompass",
			"ItemMap",
			"Exile_Item_XM8",
			"ItemRadio",
			"Exile_Item_PlasticBottleFreshWater"
		};

		/**
		 * Enables or disables parachute spawning.
		 *
		 * 1 = On
		 * 0 = Off
		 */
		parachuteSpawning = 0;

		/**
		 * Parachute drop height in meters. 
		 */
		parachuteDropHeight = 400;

		/**
		 * Number of minutes where a fresh spawned player remains in the
		 * bambi state. It will end the bambi state after this timeout
		 * expired or when they pick up their first weapon. Whatever
		 * happens first.
		 */
		protectionDuration = 5;

		/**
		 * Radius of spawn zones around the center of spawn zone markers.
		 */
		spawnZoneRadius = 500;

		/**
		 * These vehicles spawn on server restart close to spawn zones.
		 * They are non-persistent and will despawn on server restart.
		 * Basically they are just used to get away from the spawn zone
		 * faster.
		 *
		 * {Number of vehicles *per* spawn zone, vehicle class name}
		 */
		spawnZoneVehicles[] =
		{
			{5, "Exile_Bike_OldBike"},
			{5, "Exile_Bike_MountainBike"}
		};
	};

	///////////////////////////////////////////////////////////////////////
	// LOOT CONFIGURATION
	///////////////////////////////////////////////////////////////////////
	class LootSettings
	{
		/**
		 * Chance in % to spawn loot per loot spot per building.
		 *
		 * 100% = Super high loot
		 * 50%  = Normal loot spawn rates
		 * 20%  = You get the point
		 */
		spawnChance = 70;

		/**
		 * Radius in meter to spawn loot AROUND each player.
		 * Do NOT touch this value if you dont know what you do.
		 * The higher the number, the higher the drop rates, the
		 * easier your server will lag.
		 *
		 * 50m  = Minimum
		 * 200m = Maximum
		 */
		spawnRadius = 100;

		/**
		* Define a de-spawn radius here. That is the radius where loot
		* is not near to players and their lifeTime expired.
		*
		* 10m  = Minimum
		* 50m = Maximum
		*/
		visualThreshold = 25;

		/**
		 * Time in seconds to define how long loot stays on the ground
		 * after it has been spawned. Loot will despawn after this time
		 * has passed and if no player is within the despawnRadius.
		 * If the maximum life time expired, it will despawn loot 
		 * regardless if players are nearby or not.
		 */
		minimumLifeTime = 300; // 5 minutes
		maximumLifeTime = 900; // 15 minutes

		/**
		 * Notify a player that loot spawned for him
		 *
		 * 1 = Yes
		 * 0 = No
		 */
		notifyPlayer = 1;
	};

	///////////////////////////////////////////////////////////////////////
	// VEHICLE SPAWN CONFIGURATION
	///////////////////////////////////////////////////////////////////////

	class VehicleSpawn
	{
		/**
		* Grid Size for vehicle spawning,
		* smaller the number more vehicles,
		* you get the point
		*/
		vehiclesGridSize = 2200;

		/**
		* Vehicle ammount per grid
		* kinda self explanitory
		*/
		vehiclesGridAmount = 2;

		/**
		* Creates global markers for vehicle spawn tweeking,
		* after you are satisfied with vehicle ammount and spread set this to 0.
		*/
		vehiclesDebugMarkers = 0;

		/**
		* The server will apply random damage up to this value when spawning a vehicle.
		*/
		damageChance = 20; // 20% chance for a vehicle HITPOINT to be damaged
		maximumDamage = 0.9;

		// Stuff to spawn on water
		water[] = 
		{
			"Exile_Boat_MotorBoat_Police",
			"Exile_Boat_MotorBoat_Orange",
			"Exile_Boat_MotorBoat_White",
			"Exile_Boat_RubberDuck_CSAT",
			"Exile_Boat_RubberDuck_Digital",
			"Exile_Boat_RubberDuck_Orange",
			"Exile_Boat_RubberDuck_Blue",
			"Exile_Boat_RubberDuck_Black",
			"Exile_Boat_SDV_CSAT",
			"Exile_Boat_SDV_Digital",
			"Exile_Boat_SDV_Grey"
		};

		// Stuff to spawn on roads
		ground[] = 
		{
			"Exile_Bike_QuadBike_Black",
			"Exile_Bike_QuadBike_Blue",
			"Exile_Bike_QuadBike_Red",
			"Exile_Bike_QuadBike_White",
			"Exile_Bike_QuadBike_Nato",
			"Exile_Bike_QuadBike_Csat",
			"Exile_Bike_QuadBike_Fia",
			"Exile_Bike_QuadBike_Guerilla01",
			"Exile_Bike_QuadBike_Guerilla02",
			"Exile_Car_Hatchback_Rusty1",
			"Exile_Car_Hatchback_Rusty2",
			"Exile_Car_Hatchback_Rusty3",
			"Exile_Car_Hatchback_Sport_Red",
			"Exile_Car_SUV_Red",
			"Exile_Car_Offroad_Rusty1",
			"Exile_Car_Offroad_Rusty2",
			"Exile_Car_Offroad_Rusty3",
			"Exile_Car_Van_Black",
			"Exile_Car_Van_Box_Black",
			"Exile_Car_Van_Fuel_Black"
		};
	};

	class LocalityMonitor
	{
		/**
		* Transfers the ownership of construction objects to clients to ease the load on server
		* EXPERIMENTAL!
		*/
		monitor = 1;	// 0 = off, 1 = on

		threshold = 20; // Triggers when x ammout on players are on
	};

	class Weather
	{
		/*
			You can define multiple "keyframes" for the weather to change. The server will pick
			a keyframe randomly to simulate the weather. It will change the weather-keyframes
			based on the following interval
		*/
		interval = 30;

		/*
			Add the keyframes here. The server will pick one random, so if you want one 
			weather type of be more dominant compared to others, add it multiple times
		*/
		keyframes[] = {"Sunny", "Cloudy", "Thunderstorm"}; 

		/*
			This is a keyframe. Look up the BIKI to get more details about the parameters

			Be sure to design the fog settings at a view distance of 1,600m as this is the
			limit in multiplayer by default

			https://community.bistudio.com/wiki/fogParams
			https://community.bistudio.com/wiki/overcast
			https://community.bistudio.com/wiki/setWaves
			https://community.bistudio.com/wiki/setWindStr
			https://community.bistudio.com/wiki/setGusts
			https://community.bistudio.com/wiki/setRain
			https://community.bistudio.com/wiki/setLightnings
			https://community.bistudio.com/wiki/setRainbow
		*/
		class Sunny
		{
			fogValue = 0.1;
			fogDecay = 0.2;
			fogBase = 5;
			overcast = 0.2;
			waves = 0.2;
			wind = 0.3;
			gusts = 0.3;
			rain = 0;
			lightnings = 0;
			rainbows = 0;
		};

		class Cloudy
		{
			fogValue = 0.2;
			fogDecay = 0.1;
			fogBase = 5;
			overcast = 0.4;
			waves = 0.4;
			wind = 0.7;
			gusts = 0.6;
			rain = 0.1;
			lightnings = 0.1;
			rainbows = 1;
		};

		class Thunderstorm
		{
			fogValue = 0.7;
			fogDecay = 0.2;
			fogBase = 5;
			overcast = 1;
			waves = 1;
			wind = 1;
			gusts = 1;
			rain = 1;
			lightnings = 1;
			rainbows = 0.5;
		};
	};

	class Time
	{
		// Uses Dedicated Server time as ingame Time
		useRealTime = 0;

		// Will overide RealTime
		useStaticTime = 1;

		// time in ARMA FORMAT << CONFIG
		// https://community.bistudio.com/wiki/setDate

		staticTime[] = {2039,10,24,10,0};
	};


	class RCON
	{
		/*
			Note that for this to work you need to have serverCommandPassowrd defined in config.cfg and BE enabled
		*/

		// This needs to match config.cfg serverCommandPassword
		serverPassword = "";

		// Autolocks server until its ready to accept players
		useAutoLock = 1;

		// Server will autoLock at that time before restart (minutes)
		restartAutoLock = 3;

		/*
			Number of hours and minutes of your restart period.

			Examples:

			{4, 0} = Every 4 hours
			{1, 30} = Every one and a half hour (who the hell would do this?)
		*/
		restartTimer[] = {3, 0};

		/*
			Kicks players before restart to prevent gear loss.
			We strongely recommend to use this!

			0 = off
			1 = on
		*/
		useAutoKick = 1;

		/*
			Number of minutes before the server kicks players that did
			not disconnect before the restart. Should at least be two
			minutes!
		*/
		kickTime = 2;

		/*
			Self-explanatory

			0 = off
			1 = on
		*/
		useRestartMessages = 1;

		/*
			Number of minutes before the restart to inform your players.

			Only use full minutes here. Value like 5.5 have not been tested.
		*/
		restartWarrningTime[] = {15, 10, 5, 3}; 
	};
};