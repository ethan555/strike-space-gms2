/// @description  Initialize the view parent
// Create target
target = ds_map_create();
target[? "x"] = 0;
target[? "y"] = 0;

standard_width = VIEW_STANDARD_WIDTH;
standard_height = VIEW_STANDARD_HEIGHT;
width = standard_width;//camera_get_view_width(view_camera[0]);
height = standard_height;//camera_get_view_height(view_camera[0]);

// Create screenshake
screenshake = 0;

// Speed
spd = .25;
