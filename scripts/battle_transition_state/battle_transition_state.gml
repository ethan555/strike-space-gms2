///@description battle_transition_state() - Switching between battle states

// Switch the state from what it is currently to the next stage
battle_index = modulo(battle_index + 1, 2);
// Make everyone who is in the next turn be able to go again
reset_turn(battle_index);
switch(battle_index) {
    case 0: // Player
        state = battle_player_state;
        focus = player_list[| 0];
        view_jump(focus.x,focus.y);
        break;
    case 1: // Enemy
        state = battle_enemy_state; break;
}
