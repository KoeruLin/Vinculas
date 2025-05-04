hit = false;
max_hitpoint = 150;
defense = 5;
damage = 10;
range = 600;

magnification(self, obj_wave_manager.index);

hitpoint = max_hitpoint
is_projectile = false;
angle = 0;
is_enemy = true;
spd = 1;
in_range = false;
shoot_speed = 60;
cooldown = shoot_speed
obj_wave_manager.enemies_remaining++;
