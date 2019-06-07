/// @description Set the resolution of the room;
//room_set_viewport(room,0,true,0,0,VIEW_STANDARD_WIDTH,VIEW_STANDARD_HEIGHT);
view_camera[0] = camera_create_view(0,0,VIEW_STANDARD_WIDTH,VIEW_STANDARD_HEIGHT);
view_enabled = true;
view_visible[0] = true;
display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

/*view_wview[0] = res_xscale;
view_hview[0] = res_yscale;
view_wport[0] = res_xscale;
view_hport[0] = res_yscale;*/

/* */
/*  */
