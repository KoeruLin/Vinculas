image_yscale = 0.25;
image_xscale = 0.25;

if (obj_player.energy_slash_current_cooldown <= 0)
{
	image_blend = c_white;
}
else
{
	image_blend = merge_color(c_white, c_red, (obj_player.energy_slash_current_cooldown / obj_player.energy_slash_cooldown));
}

x = obj_camera_manager.real_x + 50;
y = obj_camera_manager.real_y + 475;
draw_self();