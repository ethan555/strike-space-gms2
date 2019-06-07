///@description battle_player_state() - State where player controls camera and can order units
// focus is the unit we are focused on

var quickbar = input.quickbar;

var tab = input.tab;
var reload = input.reload;
var backspace = input.backspace;
var shift = input.shift;

var mouse_left_pressed = input.mouse_left_pressed;

if (!instance_exists(focus)) {
    switch_focus();
    populate_target_list();
}

// Jump to the next unit in the player list
if (tab) {
    switch_focus();
    populate_target_list();
}

// End the unit's turn
if (backspace) {
    if (shift) {
        // End the squad's turn
        state = battle_transition_state;
        return;
    } else {
        // End only the unit's turn
        focus.gone = true;
        switch_focus();
    }
}

// Quickbar support
for (var i = 0, length = array_length_1d(quickbar); i < length; i ++) {
    // If one of the numbers was pressed, execute the quickbar action for that unit
    if (/*i < focus.quickbar_length && */quickbar[i]) {
        if (i == 0) {
            state = battle_player_aim_state;
            focus.draw_arc = true;
            if (ds_list_size(target_list) > 0) {
                var t = target_list[| target_index];
                view_jump(t.x,t.y);
                unit_look_at(focus, t.x, t.y);
            }
        }
        break;
    }
}
