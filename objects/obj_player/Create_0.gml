function energy_slash()
{		
	instance_create_depth(x, y, 0, obj_energy_wave);
}

function homing_arrows()
{
	instance_create_depth(x, y, 0, obj_player_homing_arrows);
}

max_hitpoint = 200;
hitpoint = max_hitpoint;
damage = 500000000;
movement_spd = 7;
speed_cap = 30;
hits = 1;
hit = false;
defense = 10;
shoot_cooldown = 5;
energy_slash_cooldown = 360;
energy_slash_current_cooldown = energy_slash_cooldown;
rapid_fire = false;
homing_arrows_remaining = 10;
pace = 5;
current_cooldown = shoot_cooldown;
rapid_fire_homing_arrows_cooldown = 180;
current_rapid_fire_homing_arrows_cooldown = rapid_fire_homing_arrows_cooldown;
regen_timer = 120;
time_remaining_till_regen = regen_timer;
in_combat = false;
is_projectile = false;
time_to_regen = 60;
invinciblility_frames = 0;
image_xscale = 2.5;
previousx = x;
previousy = y;