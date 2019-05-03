/// @description Initialize inputs

l = ord("A");
r = ord("D");
u = ord("W");
d = ord("S");

var i = 0;
qb[i++] = ord("1");
qb[i++] = ord("2");
qb[i++] = ord("3");
qb[i++] = ord("4");
qb[i++] = ord("5");
qb[i++] = ord("6");
qb[i++] = ord("7");
qb[i++] = ord("8");
qb[i++] = ord("9");
qb[i++] = ord("0");
qb[i++] = 189;    // -
qb[i++] = 187;    // = 12 things max?

quickbar[--i] = 0;

t = vk_tab;
re = ord("R");
bs = vk_backspace;
s = vk_shift;

m_l = mb_left;
m_r = mb_right;

get_input();
