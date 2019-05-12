/// @description  Init the view
event_inherited();

// Set view state
state = view_cursor_state;//view_follow_p_state;

//Set view zoom
zoom = 1;

lw = width;
lh = height;

camera_set_view_size(view_camera[0],width,height);

//__view_set( e__VW.WView, 0, 800 );
//__view_set( e__VW.HView, 0, 450 );

//Move view
camera_set_view_pos(view_camera[0],x,y);

//__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )/2 );
//__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )/2 );

// Update target point
target[? "x"] = x;
target[? "y"] = y;
script_execute(state);
