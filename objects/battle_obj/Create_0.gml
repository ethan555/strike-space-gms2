/// @description Initialize the battle

//unit_list = ds_list_create();
//player_list = ds_list_create();

// Build the enemy list out of the units in the room
show_debug_message("populating enemy list");
populate_enemy_list();
// Spawn the players from the player list at the spawn points
show_debug_message("populating player list and spawning units");
spawn_players();

// The control state of the battle
state = battle_transition_state;
if (instance_exists(view_obj)) {
    view_obj.state = view_cursor_state;
}

zoom = 1;

/*
    -1 : beginning fight
    0 : player
    1 : enemy
    >2 : ???
 */
battle_index = -1;

// index of the enemies
unit_index = 0;

// Number of units, need to update every turn
player_number = ds_list_size(player_list);
enemy_number = ds_list_size(enemy_list);
units_finished = 0; // Keeps track of how many units have gone

focus = noone;
if (ds_list_size(player_list) > 0) {
    focus = player_list[| 0];
    view_jump(other.focus.x,other.focus.y);
}
target = noone;
