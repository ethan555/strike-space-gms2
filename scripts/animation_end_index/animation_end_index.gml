/// @description animation_end_index(index, end, image_speed)
/// @param index
/// @param frame
/// @param img_speed
/*
    Will return true at the end of an animation.
    You must have a positive animation speed.
*/

var i = 0;
var index = argument[i++];
var frame = argument[i++];
var img_speed = argument[i++];

var result = animation_hit_frame_index(index, frame, img_speed);
return result;
