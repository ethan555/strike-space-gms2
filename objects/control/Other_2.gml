/// @description Initialize the cursor
cursor_sprite = cursor_sp;
window_set_cursor(cr_none);
if (!instance_exists(weapon_stats_obj)) {
    instance_create_depth(0,0,0,weapon_stats_obj);
}
//game_set_speed(60, gamespeed_fps);

globalvar roster, player_list, enemy_list, unit_list;
roster = ds_list_create();
player_list = ds_list_create();
ds_list_add(player_list,"alpha","alpha","alpha");
enemy_list = ds_list_create();
unit_list = ds_list_create();
