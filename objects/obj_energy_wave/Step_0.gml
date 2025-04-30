wave_duration--;
motion_set(angle, spd);

if (wave_duration <= 0)
{
	instance_destroy(self);
}

var collision = instance_place(x, y, all);

if (collision != noone && collision.object_index != obj_player)
{
	if (collision == obj_wall)
	{
		instance_destroy(self);
	}
	else
	{
		if (variable_instance_exists(collision, "hitpoint"))
        {
			take_damage(collision, damage * 2.5);
			collision.spd = -spd * 3;
        }
		
		if (variable_instance_exists(collision, "hit"))
		{
			collision.hit = true;
		}
	}
}