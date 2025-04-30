image_xscale = 0.5;
image_yscale = 0.5;

if (obj_buff_roulette.attack_spd_buff)
{
	sprite_index = spr_attack_speed_boost;
}
else if (obj_buff_roulette.damage_buff)
{
	sprite_index = spr_attack_boost;
}
else if (obj_buff_roulette.defense_buff)
{
	sprite_index = spr_defense_boost;
}
else if (obj_buff_roulette.speed_buff)
{
	sprite_index = spr_speed_boost;
}
else if (obj_buff_roulette.health_buff)
{
	sprite_index = spr_health_boost;
}
else
{
	sprite_index = spr_extra_strike_boost;
}

timer = 30;