/// @description view_zoom(scale) scale to size
/// @param scale

var scale = argument[0];
var view = instance_find(view_obj,0);

// Jump to x,y
with (view) {
    width = standard_width * scale;
    height = standard_height * scale;
}
