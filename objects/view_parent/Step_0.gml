/// @description  Update the view position
//width = view_get_wport(0)/2;
//height = view_get_hport(0)/2;

camera_set_view_size(view_camera[0],width,height);

target[? "x"] = clamp(target[? "x"], 0, room_width);//width, room_width - width);
target[? "y"] = clamp(target[? "y"], 0, room_height);//height, room_height - height);
// Move the view towards the target point
x = lerp(x, target[? "x"], spd);
y = lerp(y, target[? "y"], spd);

camera_set_view_pos(view_camera[0],
    x - width/2 + irandom_range(-screenshake, screenshake), //x - (view_wport[0] / 2), y - (view_hport[0] / 2));
    y - height/2 + irandom_range(-screenshake, screenshake));



