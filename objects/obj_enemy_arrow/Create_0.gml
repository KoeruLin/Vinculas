event_inherited();
obj_wave_manager.enemies_remaining--;
is_enemy = true;
is_projectile = true;
arrow_duration = 180;
arrow_spd = 15;
angle = point_direction(x, y, obj_player.x, obj_player.y);