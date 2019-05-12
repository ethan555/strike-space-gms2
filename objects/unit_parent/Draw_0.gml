/// @description Draw the body, head, and arms

// Draw body first
draw_sprite(sprite[s_index],image_index,x,y);

var head_index = 0;
if (abs(angle_difference(angle,0)) < 15) { // Forward
    head_index = 7;
} else if (angle_difference(angle,0) < 0) {
    head_index = 10;
} else {
    head_index = 11;
}

// Draw head over body
draw_sprite(head,head_index,x,y-12);

// Draw weapon
draw_sprite_ext(weapon_sprite,weapon_sprite_index,x-ARM_X_OFFSET,y-ARM_Y_OFFSET,
    facing*image_xscale,image_yscale,angle,image_blend,image_alpha);

// Draw arms last
draw_sprite_ext(arms,arms_index,x-ARM_X_OFFSET,y-ARM_Y_OFFSET,
    facing*image_xscale,image_yscale,angle,image_blend,image_alpha);
