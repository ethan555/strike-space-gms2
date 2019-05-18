/// @description unit_look_at(unit,x,y) Causes a unit (child of unit_parent) to face a certain point.
/// @param unit
/// @param x
/// @param y

var i = 0;
var unit = argument[i++];
var tx = argument[i++];
var ty = argument[i++];

with (unit) {
    angle = point_direction(x+ARM_X_OFFSET,y+ARM_Y_OFFSET,tx,ty);
    if (tx < x+ARM_X_OFFSET) {
        facing = -1;
    } else {
        facing = 1;
    }
}
