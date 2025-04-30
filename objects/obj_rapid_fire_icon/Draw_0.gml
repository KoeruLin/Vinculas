image_yscale = 0.75;
image_xscale = 0.75;

if (obj_player.current_rapid_fire_homing_arrows_cooldown <= 0)
{
	image_blend = c_white;
}
else
{
	image_blend = merge_color(c_white, c_red, (obj_player.current_rapid_fire_homing_arrows_cooldown / obj_player.rapid_fire_homing_arrows_cooldown));
}

x = obj_camera_manager.real_x + 150;
y = obj_camera_manager.real_y + 470;
draw_self();