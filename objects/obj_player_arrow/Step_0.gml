arrow_duration--;
motion_set(angle, spd);

if (arrow_duration <= 0)
{
	instance_destroy(self);
}

var collision = instance_place(x, y, all);

if (collision != noone && collision.object_index != obj_player && collision.object_index != obj_player_homing_arrows && collision.object_index != obj_buff_roulette)
{
	if (collision == obj_wall || collision == obj_fireball)
	{
		instance_destroy(self);
	}
	else
	{
		if (variable_instance_exists(collision, "hitpoint"))
        {
			for (var i = 0; i < 15 * obj_player.hits; i++)
			{
				if (i % 15 == 0)
				{
					take_damage(collision, damage);
				}
			}
			collision.spd = -spd * 3;
        }
		
		if (variable_instance_exists(collision, "hit"))
		{
			collision.hit = true;
		}
		
		instance_destroy(self)
	}
}