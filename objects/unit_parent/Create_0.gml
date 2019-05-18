/// @description Initialize

hp = 5;
movement = 5;
ammo = 10;

weapon_index = 0;
weapon_sprite_index = 0;
weapon[0] = "pistol";

var i = 0;
quickbar[i++] = unit_fire;
quickbar[i++] = unit_overwatch;
quickbar[i++] = unit_end_turn;
quickbar_length = array_length_1d(quickbar);

target_index = 0;
targets = ds_list_create();

facing = 1;
angle = 0;

s_index = IDLE;
sprite[IDLE] = soldier_body_idle_sp;
sprite[MOVE] = unit_run_sp;
sprite[FIRE] = unit_fire_sp;

head = soldier_head_sp;
arms = soldier_arm_sp;
arms_index = 0;

weapon_sprite = pistol_sp;

gone = true;
