event_inherited();
obj_wave_manager.enemies_remaining--;
is_enemy = true;
is_projectile = true;
fireball_duration = 180;
fireball_spd = 5;
angle = point_direction(x, y, obj_player.x, obj_player.y);