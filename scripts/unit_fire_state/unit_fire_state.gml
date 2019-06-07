/// @description unit_fire_state()
// Shoot and return to gone

if (animation_end_index(weapon_image_index, weapon_image_number, weapon_image_speed)) {
    shots --;
    // Go to the next shot if needed, otherwise end turn
    if (shots <= 0) {
        weapon_image_speed = 0;
        unit_end_turn();
    }
}
