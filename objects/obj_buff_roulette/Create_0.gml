function upgrade_extra_strike()
{
	obj_player.hits++;
}


function damage_boost()
{
	obj_player.damage *= 1.1;
}


function atk_spd_boost()
{
	obj_player.shoot_cooldown *= 0.9;
}


function defense_boost()
{
	obj_player.defense *= 1.25;
}


function spd_boost()
{
	obj_player.movement_spd++;
}

function health_boost()
{
	var current = obj_player.max_hitpoint;
	obj_player.max_hitpoint *= 1.25;
	obj_player.hitpoint *= (obj_player.max_hitpoint / current);
}

is_enemy = false;
is_projectile = false;
buff_triggered = false;
in_range = noone;
extra_strike = false;
damage_buff = false;
health_buff = false;
speed_buff = false;
defense_buff = false;
attack_spd_buff = false;