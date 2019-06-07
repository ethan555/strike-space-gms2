/// @description switch_focus()

var loopback = focus;
unit_index = modulo(unit_index + 1, ds_list_size(player_list));
focus = instance_find(player_parent, unit_index);
// Skip over units who have already gone
while (focus.gone) {
    unit_index = modulo(unit_index + 1, ds_list_size(player_list));
    focus = instance_find(player_parent, unit_index);
    if (focus == loopback && focus.gone) {
        // If there are no units remaining to go, then go to the next state
        state = battle_transition_state;
        return;
    }
}
view_jump(focus.x,focus.y);