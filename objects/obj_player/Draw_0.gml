image_yscale = 2;
draw_self();

draw_rectangle(x - 20, y + 40 , x + 20, y + 50, false);
draw_set_color(c_red);
draw_rectangle(x - 20, y + 40, x - 20 + (40 * max(0, hitpoint / max_hitpoint)), y + 50, false);
draw_set_color(c_white);