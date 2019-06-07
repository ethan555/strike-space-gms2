/// @description Initialize

// Basic stats
hp = 5;
movement = 5;
ammo = 10;

// Weapon stats
weapon_index = 0;
weapon_image_index = 0;
weapon_image_number = 0;
weapon_image_speed = 0;
weapon[0] = "pistol";

// How many shots the unit has left (in fire state)
shots = 0;

// The unit's available actions
var i = 0;
quickbar[i++] = unit_fire;
quickbar[i++] = unit_overwatch;
quickbar[i++] = unit_end_turn;
quickbar_length = array_length_1d(quickbar);

facing = 1;
angle = 0;

// Sprites of the body, arms, weapons
s_index = IDLE;
sprite[IDLE] = soldier_body_idle_sp;
sprite[MOVE] = unit_run_sp;
sprite[FIRE] = unit_fire_sp;

head = soldier_head_sp;
arms = soldier_arm_sp;
arms_index = 0;

for (var i = 0, length = array_length_1d(weapon); i < length; i ++) {
    var weap = weapon_stats[? weapon[i]];
    weapon_sprite[i] = asset_get_index(weap[? "sprite"]);
}
// Number of images in the weapon sprite, need to update when switch weapons
weapon_image_number = sprite_get_number(weapon_sprite[weapon_index]);

// If the player is in aim mode, show the fire range/arc
draw_arc = false;

// Whether this unit has used its turn yet
gone = true;

state = unit_idle_state;
