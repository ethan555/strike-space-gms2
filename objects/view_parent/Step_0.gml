/// @description  Update the view position
var width = view_get_wport(0)/2;
var height = view_get_hport(0)/2;

camera_set_view_pos(view_camera[0],
    x - width + irandom_range(-screenshake, screenshake),
    y - height + irandom_range(-screenshake, screenshake));

// Move the view towards the target point
x = lerp(x, target[? "x"], spd);
y = lerp(y, target[? "y"], spd);

var x1, x2, y1, y2;

x1 = x - width;
y1 = y - height;
x2 = x + width;
y2 = y + height;

//x = clamp(x, width, room_width - width);
//y = clamp(y, height, room_height - height);

//x = clamp(x, view_wview[0]/2, room_width - view_wview[0]/2);
//y = clamp(y, view_hview[0]/2, room_height - view_hview[0]/2);


