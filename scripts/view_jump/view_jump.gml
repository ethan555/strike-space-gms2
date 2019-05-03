/// @description view_jump(x,y) Jump to a coordinate
/// @param x
/// @param y

var xx = argument[0];
var yy = argument[1];
var view = instance_find(view_obj,0);

// Jump to x,y
with (view) {
    target[? "x"] = xx;
    target[? "y"] = yy;
}
