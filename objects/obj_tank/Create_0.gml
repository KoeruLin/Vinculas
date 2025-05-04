hit = false;
is_projectile = false;
is_enemy = true;
max_hitpoint = 350;
defense = 60;
damage = 30;
range = 25;

magnification(self, obj_wave_manager.index);

hitpoint = max_hitpoint;
spd = 10;
in_range = false;
slam_speed = 60;
cooldown = slam_speed
obj_wave_manager.enemies_remaining++;
