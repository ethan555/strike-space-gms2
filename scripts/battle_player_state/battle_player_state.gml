///@description battle_player_state() - State where player controls camera and can order units
// focus is the unit we are focused on

var quickbar = input.quickbar;

var tab = input.tab;
var reload = input.reload;
var backspace = input.backspace;
var shift = input.shift;

var mouse_left_pressed = input.mouse_left_pressed;

if (!instance_exists(focus)) {
    var loopback = focus;
    unit_index = modulo(unit_index + 1, ds_list_size(player_list));
    focus = instance_find(player_parent, unit_index);
    // Skip over units who have already gone
    while (focus.gone && focus != loopback) {
        unit_index = modulo(unit_index + 1, ds_list_size(player_list));
        focus = instance_find(player_parent, unit_index);
    }
}

// Jump to the next unit in the player list
if (tab) {
    var loopback = focus;
    unit_index = modulo(unit_index + 1, ds_list_size(player_list));
    focus = instance_find(player_parent, unit_index);
    // Skip over units who have already gone
    while (focus.gone && focus != loopback) {
        unit_index = modulo(unit_index + 1, ds_list_size(player_list));
        focus = instance_find(player_parent, unit_index);
    }
    view_jump(focus.x,focus.y);
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
        var loopfocus = focus;
        // Jump to the next unit who hasn't gone
        while (focus.gone) {
            unit_index = modulo(unit_index + 1, ds_list_size(player_list));
            focus = instance_find(player_parent, unit_index);
            // Check if there are no units left
            if (focus == loopfocus) {
                // If there are no units remaining to go, then go to the next state
                state = battle_transition_state;
                return;
            }
        }
        view_jump(focus.x,focus.y);
    }
}

// Quickbar support
for (var i = 0, length = array_length_1d(quickbar); i < length; i ++) {
    // If one of the numbers was pressed, execute the quickbar action for that unit
    if (i < focus.quickbar_length && quickbar[i]) {
        if (i == 0) {
            state = battle_player_aim_state;
        }
        break;
    }
}
