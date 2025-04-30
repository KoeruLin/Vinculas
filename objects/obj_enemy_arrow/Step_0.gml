arrow_duration--;
motion_set(angle, arrow_spd);

if (arrow_duration <= 0)
{
	instance_destroy(self);
}

var collision = instance_place(x, y, all);

if (collision != noone && collision.object_index != obj_archer && collision.object_index != obj_enemy_arrow && collision.object_index != obj_buff_roulette)
{
	if (collision.object_index == obj_player)
	{
		take_damage(collision, damage);
		instance_destroy(self);
	}
	else if (collision == obj_wall)
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