///@description battle_player_state() - State where player controls camera and can order units
// focus is the unit we are focused on

var quickbar = input.quickbar;

var tab = input.tab;
var reload = input.reload;
var backspace = input.backspace;
var shift = input.shift;

var mouse_right = input.mouse_right;

// Jump to the next target that this unit can see
if (tab) {
    if (ds_list_size(target_list) > 0) {
        target_index = modulo(target_index + 1, ds_list_size(target_list));
        var t = target_list[| target_index];
        view_jump(t.x,t.y);
        unit_look_at(focus, t.x, t.y);
    } else {
        view_jump(focus.x,focus.y);
    }
}

// Go back to regular state
if (backspace) {
    state = battle_player_state;
    focus.draw_arc = false;
}

// If holding the mouse, then follow mouse
if (mouse_right) {
    unit_look_at(focus, mouse_x, mouse_y);
}
// Quickbar support
/*for (var i = 0, length = array_length_1d(quickbar); i < length; i ++) {
    // If one of the numbers was pressed, execute the quickbar action for that unit
    if (i < focus.quickbar_length && quickbar[i]) {
        if (i == 0) {
            
        }
        break;
    }
}
