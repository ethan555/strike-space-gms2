///@description populate_target_list()

// Get all the enemies in range and visible and add them to the list
ds_list_clear(target_list);
ds_list_clear(visible_list);
for (var i = 0; i < instance_number(enemy_parent); i ++) {
    targ = instance_find(enemy_parent, i);
    var weapon = weapon_stats[? focus.weapon[focus.weapon_index]];
    var range = weapon[? "range"];
    
    // If the target is in range and we can see it, add it
    var dist = point_distance(focus.x,focus.y,targ.x,targ.y)
    if (dist < VISIBLE_RANGE) {
        if (!collision_line(focus.x,focus.y,targ.x,targ.y,wall,false,true)) {
            if (dist < range) {
                ds_list_add(target_list, targ);
            } else {
                ds_list_add(visible_list, targ);
            }
        }
    }
}
target_index = 0;
