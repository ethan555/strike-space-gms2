/// @description view_cursor_target_state(target)
/// @param target

var target = argument[0];

// Set the view between the target and where its pointing
var half = point_distance(x,y,target.x,target.y)/2;
var dir = point_direction(x,y,target.x,target.y);
view_jump(x+lengthdir_x(half,dir),y+lengthdir_y(half,dir));
view_zoom(min(max(abs(target.x-x)/VIEW_STANDARD_WIDTH, abs(target.y-y)/VIEW_STANDARD_HEIGHT), ZOOM_OUT));
