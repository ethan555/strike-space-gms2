/// @description Every step, check physics and take input

var left = input.left;
var right = input.right;
var up = input.up;
var down = input.down;

if (follow == noone) {
    if (left || right) {
        if (!(left && right)) {
            if (left) {
                // Move the view
                xspd -= accel;
            } else {
                // Move the view
                xspd += accel;
            }
            xspd = sign(xspd) * modulo(xspd, MAXCURSORSPD);
        }
    } else {
        xspd -= sign(xspd);
    }

    if (up || down) {
        if (!(up && down)) {
            if (down) {
                // Move the view
                yspd -= accel;
            } else {
                // Move the view
                yspd += accel;
            }
            yspd = sign(yspd) * modulo(yspd, MAXCURSORSPD);
        }
    } else {
        yspd -= sign(yspd);
    }
    
    camera_set_view_speed(view_camera[0],xspd,yspd);
}

// Set the cursor to where the mouse is
//x = mouse_x;
//y = mouse_y;

// If the cursor is on the edge of the screen, move the view
var xport = view_get_xport(0);
if (x <= xport || x >= xport + view_get_wport(0)) {
    // Move view based on x
    view_set_xport(0, xport + MAXCURSORSPD * sign(x - xport));
}

var yport = view_get_yport(0);
if (y <= yport || y >= yport + view_get_hport(0)) {
    // Move view based on x
    view_set_yport(0, yport + MAXCURSORSPD * sign(x - xport));
}
