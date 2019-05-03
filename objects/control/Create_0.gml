/// @description Init

//Set GUI layer size
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0])); //__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

// Font
globalvar custom_font;
custom_font = font_add_sprite_ext(font_sp, FONT_CHARS, 1, 1);
draw_set_font(global.custom_font);

last_room = room0;
battle = true;

global.save_data = ds_map_create();
global.load = false;

