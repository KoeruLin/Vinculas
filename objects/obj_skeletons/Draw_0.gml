if (obj_player.x < x)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}
image_yscale = 1;
draw_hp_bar(x, y, self);
draw_self();