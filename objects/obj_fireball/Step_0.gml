fireball_duration--;
motion_set(angle, fireball_spd);

if (fireball_duration <= 0)
{
	instance_destroy(self);
}

var collision = instance_place(x, y, all);

if (collision != noone && collision.object_index != obj_archer && collision.object_index != obj_enemy_arrow)
{
	if (collision.object_index == obj_player)
	{
		take_damage(collision, damage);
		instance_destroy(self);
	}
	else if (collision == obj_wall || collision == obj_energy_wave)
	{
		instance_destroy(self);
	}
	else
	{
		if (variable_instance_exists(collision, "is_enemy"))
		{
			if (!collision.is_enemy)
			{
				instance_destroy(collision);
				instance_destroy(self);
			}
		}
			
	}
}