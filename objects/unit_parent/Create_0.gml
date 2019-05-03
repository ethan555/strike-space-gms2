/// @description Initialize

hp = 5;
movement = 5;
ammo = 10;

weapon_index = 0;
weapon[0] = "pistol";

var i = 0;
quickbar[i++] = unit_fire;
quickbar[i++] = unit_overwatch;
quickbar[i++] = unit_end_turn;
quickbar_length = array_length_1d(quickbar);
gone = true;
