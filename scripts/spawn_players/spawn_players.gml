///@description spawn_players()

// Spawn the player units
for (var i = 0, length = min(ds_list_size(player_list), instance_number(unit_spawner)); i < length; i ++) {
    
    var inst = instance_find(unit_spawner,i);
    var unit;
    with (inst) {
        //spawn_player(x,y,player_list[| i]);
        // Spawn the player, set up the player list for later access
        unit = instance_create_depth(x,y,0,alpha);
        player_list[| i] = unit;
    }
}
