current_cooldown--;
energy_slash_current_cooldown--;
current_rapid_fire_homing_arrows_cooldown--;
invinciblility_frames--;
image_blend = merge_color(image_blend, c_white, 0.2);

if (x == previousx && y == previousy)
{
	sprite_index = spr_player_idle;
}

if (keyboard_check(ord("W")) && !(place_meeting(x, y - movement_spd, obj_wall)) && !(place_meeting(x, y - movement_spd, obj_buff_roulette)))
{
	y -= movement_spd;
	sprite_index = spr_player_run;
}
else if (keyboard_check(ord("S")) && !(place_meeting(x, y + movement_spd, obj_wall)) && !(place_meeting(x, y + movement_spd, obj_buff_roulette)))
{
	y += movement_spd;
	sprite_index = spr_player_run;
}

if (keyboard_check(ord("A")) && !(place_meeting(x - movement_spd, y, obj_wall)) && !(place_meeting(x - movement_spd, y, obj_buff_roulette)))
{
	x -= movement_spd;
	image_xscale = -2;
	sprite_index = spr_player_run;
}
else if (keyboard_check(ord("D")) && !(place_meeting(x + movement_spd, y, obj_wall)) && !(place_meeting(x + movement_spd, y, obj_buff_roulette)))
{
	x += movement_spd;
	image_xscale = 2;
	sprite_index = spr_player_run;
}

if (keyboard_check_pressed(ord("Q")) && current_cooldown <= 0)
{
	instance_create_depth(x, y, 0, obj_player_arrow);
	current_cooldown = shoot_cooldown;
}

if (in_combat)
{
	time_remaining_till_regen--;
}
else
{
	hitpoint += (max_hitpoint * 0.05) / time_to_regen;
	
	if (hitpoint > max_hitpoint)
	{
		hitpoint = max_hitpoint;
	}
}

if (time_remaining_till_regen <= 0 && obj_wave_manager.cleared)
{
	in_combat = false;
}

if (speed_cap <= movement_spd)
{
	movement_spd = speed_cap;
}

if (energy_slash_current_cooldown <= 0 && keyboard_check_pressed(ord("E")))
{
	var sword_sound = audio_play_sound(_49677__ejfortin__energy_short_sword_6, false, false);
	audio_sound_pitch(sword_sound, random_range(0.8, 1.2));
	energy_slash();
	energy_slash_current_cooldown = energy_slash_cooldown;
}
else if (current_rapid_fire_homing_arrows_cooldown <= 0 && keyboard_check_pressed(ord("R")))
{
	rapid_fire = true;
	current_rapid_fire_homing_arrows_cooldown = rapid_fire_homing_arrows_cooldown
	var arrow_sound = audio_play_sound(many_arrows_flying_by_306037, false, false);
	audio_sound_pitch(arrow_sound, random_range(4, 4.2));
}

if (rapid_fire)
{
	pace--;
	
	if (pace <= 0)
	{
		homing_arrows();
		pace = 5;
		homing_arrows_remaining--;
	}
	
	if (homing_arrows_remaining <= 0)
	{
		rapid_fire = false;
		homing_arrows_remaining = 10;
	}
}


if (hit)
{
	image_blend = c_red;
	hit = false;
}


if (global.reset_game)
{
	room_restart();
	global.reset_game = false;
}

if (hitpoint <= 0)
{
	room_restart();
	room_goto(EndScreen);
}
else if (obj_wave_manager.cleared && obj_wave_manager.index == array_length(obj_wave_manager.wave_current))
{
	room_restart();
	room_goto(WinScreen);
}

previousx = x;
previousy = y;

show_debug_message(hitpoint);