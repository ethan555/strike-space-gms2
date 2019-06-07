/// @description Draw current UI

var i, length = ds_list_size(target_list);
for (i = 0; i < length; i ++) {
    var spr = battle_sp;
    if (i == target_index) {spr = selected_sp;}
    draw_sprite(spr,0,10+GUI_TARGET_DX*i,10);
}
var j;
length = ds_list_size(visible_list);
for (j = 0; j < length; j ++) {
    draw_sprite(visible_sp,0,10+GUI_TARGET_DX*i,10);
    i++;
}
