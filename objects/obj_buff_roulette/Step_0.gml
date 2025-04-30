in_range = collision_circle(
		obj_buff_roulette.x, obj_buff_roulette.y, 
		150, obj_player, false, false);
		
if (buff_triggered)
{
	var r = irandom_range(0, 5);
	audio_play_sound(mixkit_small_win_2020, 0, false);
	switch (r)
	{
		case 0:
			atk_spd_boost();
			attack_spd_buff = true;
			break;
		case 1:
			damage_boost();
			damage_buff = true;
			break;
		case 2:
			defense_boost();
			defense_buff = true;
			break;
		case 3:
			health_boost();
			health_buff = true;
			break;
		case 4:
			spd_boost();
			speed_buff = true;
			break;
		default:
			upgrade_extra_strike();
			extra_strike = true;
	}
}
