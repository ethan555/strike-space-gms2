/// @description reset_turn(battle_index)
/// @param battle_index
var battle_index = argument[0];

var list;
switch(battle_index) {
    // Players
    case 0:
        list = player_list; break;
    case 1:
        list = enemy_list; break;
}

// Reset the units to awake
var unit;
for(var i = 0, length = ds_list_size(list); i < length; i ++) {
    // Get the unit
    unit = list[| i];
    // Wake up the unit
    unit.gone = false;
}
