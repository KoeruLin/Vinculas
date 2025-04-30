var angle = point_direction(x, y, obj_player.x, obj_player.y);
mp_potential_step(obj_player.x, obj_player.y, spd, true);
cooldown--;
summon_cooldown--;
obj_wave_manager.cleared = false;
image_blend = merge_color(image_blend, c_white, .2);

if (distance_to_object(obj_player) <= range)
{
	in_range = true;
	spd = 0;
}
else 
{
	in_range = false;
	spd = 5;
}

if (in_range)
{
	if (cooldown <= 0)
	{
		var fireball_sound = audio_play_sound(phuuua_232012, false, false);
		audio_sound_pitch(fireball_sound, random_range(0.90, 1.1));
		audio_sound_gain(fireball_sound, 0.5, 0);
		instance_create_depth(x, y, 0, obj_fireball);
		cooldown = shoot_speed;
	}
	
	if (summon_cooldown <= 0 && summoned_amount + 4 < max_summons)
	{
		summon_skeletons()
		summon_cooldown = summon_speed;
	}
	
}

if (hit)
{
	image_blend = c_red;
	hit = false;
}

if (hitpoint <= 0)
{
	obj_wave_manager.enemies_remaining--;
	
	if (obj_wave_manager.enemies_remaining <= 0)
	{
		obj_wave_manager.cleared = true;
	}
	
	obj_wave_manager.points += 15;
	audio_play_sound(male_death_sound_128357, 1, false);
	instance_destroy(self);
}