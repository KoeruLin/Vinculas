collision_circle_list(x, y, 500, all, false, false, enemy_list, true);

for (var i = 0; i < ds_list_size(enemy_list); i++)
{
	var index_enemy = ds_list_find_value(enemy_list, i);
	
	if (variable_instance_exists(index_enemy, "is_enemy") && index_enemy.is_enemy)
	{
		if (variable_instance_exists(index_enemy, "is_projectile") && !(index_enemy.is_projectile))
		{
			target = index_enemy;
			break;
		}
	}
}

if (target != noone && instance_exists(target))
{
	angle = point_direction(x, y, target.x, target.y);
}

motion_set(angle, spd * 2);

var collision = instance_place(x, y, all);

if (collision != noone && collision.object_index != obj_player && collision.object_index != obj_buff_roulette)
{
	if (collision == obj_wall || collision == obj_fireball)
	{
		instance_destroy(self);
	}
	else
	{
		if (variable_instance_exists(collision, "hitpoint"))
        {
			take_damage(collision, damage);
			collision.spd = -spd * 3;
        }
		
		if (variable_instance_exists(collision, "hit"))
		{
			collision.hit = true;
		}
		
		instance_destroy(self)
	}
}