/// @description view_cursor_state()

// Allow WASD/directional movement of view
var left = input.left;
var right = input.right;
var up = input.up;
var down = input.down;
if (left || right) {
    if (!(left && right)) {
        if (left) {
            // Move the view
            target[? "x"] -= MAXCURSORSPD;
        } else {
            // Move the view
            target[? "x"] += MAXCURSORSPD;
        }
    }
}

if (up || down) {
    if (!(up && down)) {
        if (down) {
            // Move the view
            target[? "y"] += MAXCURSORSPD;
        } else {
            // Move the view
            target[? "y"] -= MAXCURSORSPD;
        }
    }
}

// Allow the user to move the view around by putting the cursor on the edge of the screen
var wx = window_mouse_get_x() + window_get_x();
var wy = window_mouse_get_y() + window_get_y();
if (wx <= window_get_x()) {
    target[? "x"] = target[? "x"] - MAXCURSORSPD;
} else if (wx >= window_get_x() + window_get_width() - 1) { //vx + view_wport[0] - 1) {
    target[? "x"] = target[? "x"] + MAXCURSORSPD;
}

if (wy <= window_get_y()) {
    target[? "y"] = target[? "y"] - MAXCURSORSPD;
} else if (wy >= window_get_y() + window_get_height() - 1) { //vy + view_hport[0] - 1) {
    target[? "y"] = target[? "y"] + MAXCURSORSPD;
}

