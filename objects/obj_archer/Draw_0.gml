if (obj_player.x < x)
{
	image_xscale = -2.5;
}
else
{
	image_xscale = 2.5;
}
image_yscale = 2.5;
draw_hp_bar(x, y, self);
draw_self();