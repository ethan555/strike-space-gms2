/// @description  Initialize the view parent
// Create target
target = ds_map_create();
target[? "x"] = 0;
target[? "y"] = 0;

width = 1024;//camera_get_view_width(view_camera[0]);
height = 768;//camera_get_view_height(view_camera[0]);
standard_width = width;
standard_height = height;

// Create screenshake
screenshake = 0;

// Speed
spd = .25;
