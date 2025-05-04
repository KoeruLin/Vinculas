cooldown--;
var angle = point_direction(x, y, obj_player.x, obj_player.y);
mp_potential_step(obj_player.x, obj_player.y, spd, true);
obj_wave_manager.cleared = false;
image_blend = merge_color(image_blend, c_white, .2);

if (image_index == spr_skeleton_attack && image_index == 2)
{
	image_index = spr_skeletons;
	spd = 5
}

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

if (cooldown <= 0)
{
    spd = 0;
    sprite_index = spr_skeleton_attack;
    image_index = 0;
    cooldown = swing_speed;
}

if (sprite_index == spr_skeleton_attack)
{
    if (image_index >= image_number - 1)
    {
        spd = 5;
        sprite_index = spr_skeletons;
    }
    else if (floor(image_index) == 1) 
    {
        if (in_range)
        {
            take_damage(obj_player, damage);
        }
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
	
	obj_wave_manager.points++;
	obj_necromancer.summoned_amount--;
	audio_play_sound(step_skeleton_47785, 1, false);
	instance_destroy(self);
}
else if (!instance_exists(parent_instance))
{
	obj_wave_manager.enemies_remaining--;
		
	if (obj_wave_manager.enemies_remaining <= 0)
	{
		obj_wave_manager.cleared = true;
	}
	
	audio_play_sound(step_skeleton_47785, 1, false);
	instance_destroy(self);
}