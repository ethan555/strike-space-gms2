/// @description Initialize the room
//room_speed = 60;

if (!instance_exists(view_obj)) {
    instance_create_depth(view_wport[0]/2, view_hport[0]/2, 0, view_obj);
}

if (!instance_exists(input)) {
    instance_create_depth(0,0,0,input);
}

// If we are in a battle, make it a battle
if (battle) {
    if (!instance_exists(battle_obj)) {
        instance_create_depth(0,0,0,battle_obj);
    }
    battle = false;
}

/*if (!instance_exists(cursor)) {
    instance_create_depth(0,0,0,cursor);
}
