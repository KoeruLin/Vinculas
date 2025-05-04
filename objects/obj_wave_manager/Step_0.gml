if (!cleared && index < array_length(wave_current) && !wave_summoned)
{
	initialize_wave(array_get(wave_current, index), spawners);
	index++;
	wave_summoned = true;
}

if (cleared && !roulette_object_summoned && index < array_length(wave_current))
{
	if (instance_number(obj_buff_roulette) > 0)
	{
		instance_destroy(obj_buff_roulette.id);
	}
	
	instance_create_depth(room_width / 2, room_height / 2, 0, obj_buff_roulette);
	roulette_object_summoned = true;
}