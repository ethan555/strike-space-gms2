/// @description unit_end_turn()

// End turn
gone = true;
with (battle_obj) {
    play = true;
    switch_focus();
}
