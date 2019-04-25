/// @description check_physics

if (xspd != 0) {
if (!place_free(x+xspd,y)) {
    //Find where to go and go there
    var i, xdir, abs_x;
    xdir = sign(xspd);
    abs_x = abs(xspd);
    for (i = 1; i <= abs_x; i ++) {
        if (!place_free(x+i*xdir,y+yspd)) {
            x += (i-1)*xdir;
            xspd = 0;
            break;
        }
    }
}
x += xspd;
}

//Check our diagonals
if (yspd != 0) {
if (!place_free(x,y+yspd)) {
    //Find where to go and go there
    var i, ydir, abs_y;
    ydir = sign(yspd);
    abs_y = abs(yspd);
    for (i = 1; i <= abs_y; i ++) {
        if (!place_free(x,y+i*ydir)) {
            y += (i-1)*ydir;
            yspd = 0;
            break;
        }
    }
}
y += yspd;
}

