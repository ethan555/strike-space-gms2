/// @description unit_fire
/// @param unit

var i = 0;
var unit = argument[i++];

// Turn the unit to fire state
with (unit) {
    state = unit_fire_state;
    draw_arc = false;
    weapon_image_speed = .2;
    weapon_image_index = 0;
    var weap = weapon_stats[? weapon[weapon_index]];
    shots = weap[? "auto"];
}
