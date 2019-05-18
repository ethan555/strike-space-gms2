/// @description Draw the body, head, and arms

var xval = facing*image_xscale;
// Draw body first
draw_sprite_ext(sprite[s_index],image_index,x,y,xval,image_yscale,image_angle,image_blend,image_alpha);

var head_index = 0;
if (abs(angle_difference(angle,0)) < 20 || abs(angle_difference(angle,180)) < 20) { // Forward
    head_index = 7;
} else if (angle_difference(angle,0) < 0) {
    head_index = 10;
} else {
    head_index = 11;
}

// Draw head over body
draw_sprite_ext(head,head_index,x,y+HEAD_Y_OFFSET,xval,image_yscale,image_angle,image_blend,image_alpha);

var a = angle;
// Draw weapon
if (facing < 0) {a = angle-180;}
draw_sprite_ext(weapon_sprite,weapon_sprite_index,x+ARM_X_OFFSET*xval,y+ARM_Y_OFFSET,
    xval,image_yscale,a,image_blend,image_alpha);

// Draw arms last
draw_sprite_ext(arms,arms_index,x+ARM_X_OFFSET*xval,y+ARM_Y_OFFSET,
    facing*image_xscale,image_yscale,a,image_blend,image_alpha);
