/// @description  Fade
if (image_alpha != target_image_alpha) {
    var fade_spd = fade_out_spd;
    if (target_image_alpha != 1) {fade_spd = fade_in_spd;}
    // Approach the target alpha
    image_alpha = approach(image_alpha, target_image_alpha, fade_spd);
} else {
    if (image_alpha == 1) {
        // Go to next room
        target_image_alpha = 0;
        if (next_room != noone) {
            room_goto(next_room);
        }
    } else {
        // Destroy transition obj
        instance_destroy();
    }
}

