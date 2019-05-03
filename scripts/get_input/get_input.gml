/// @description get_input();

left = keyboard_check(l);
right = keyboard_check(r);
up = keyboard_check(u);
down = keyboard_check(d);

for (var i = 0, length = array_length_1d(qb); i < length; i ++) {
    quickbar[i] = keyboard_check_pressed(qb[i]);
}

tab = keyboard_check_pressed(t);
reload = keyboard_check_pressed(re);
backspace = keyboard_check_pressed(bs);
shift = keyboard_check(s);

mouse_left = mouse_check_button(m_l);
mouse_left_pressed = mouse_check_button_pressed(m_l);
mouse_right = mouse_check_button(m_r);
mouse_right_pressed = mouse_check_button_pressed(m_r);

mouse_scroll_up = mouse_wheel_up();
mouse_scroll_down = mouse_wheel_down();
