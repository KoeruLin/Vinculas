if (obj_player.x < x)
{
	image_xscale = -1.5;
}
else
{
	image_xscale = 1.5;
}
image_yscale = 1.5;
draw_hp_bar(x, y, self);
draw_self();