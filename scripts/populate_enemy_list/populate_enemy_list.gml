///@description populate_enemy_list()

// Get all the enemies in the room and add them to the list
ds_list_clear(enemy_list);
for (var i = 0; i < instance_number(enemy_parent); i ++) {
    ds_list_add(enemy_list, instance_find(enemy_parent, i));
}
