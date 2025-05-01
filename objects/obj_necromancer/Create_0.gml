function summon_skeletons()
{
	var x_radius = 50;
	var y_radius = 50;
	
	skeleton_one = instance_create_depth(x - x_radius, y + y_radius, 0, obj_skeletons);
	skeleton_one.parent_instance = id;
	
	skeleton_two = instance_create_depth(x + x_radius, y + y_radius, 0, obj_skeletons);
	skeleton_two.parent_instance = id;
	
	skeleton_three = instance_create_depth(x - x_radius, y - y_radius, 0, obj_skeletons);
	skeleton_three.parent_instance = id;
	
	skeleton_four = instance_create_depth(x - x_radius, y - y_radius, 0, obj_skeletons);
	skeleton_four.parent_instance = id;
	
	summoned_amount += 4;
}

hit = false;
is_projectile = false;
is_enemy = true;
max_hitpoint = 550;
hitpoint = max_hitpoint
max_hitpoint = hitpoint;
defense = 40;
damage = 50;
range = 300;
spd = 1;
in_range = false;
shoot_speed = 60;
summon_speed = 500;
summon_cooldown = summon_speed;
cooldown = shoot_speed;
max_summons = 8;
summoned_amount = 0;
obj_wave_manager.enemies_remaining++;
