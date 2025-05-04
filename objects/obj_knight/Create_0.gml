hit = false;
is_projectile = false;
is_enemy = true;
max_hitpoint = 300;
defense = 20;
damage = 45;
range = 100;

magnification(self, obj_wave_manager.index);

hitpoint = max_hitpoint;
spd = 8;
in_range = false;
swing_speed = 60;
cooldown = swing_speed;
obj_wave_manager.enemies_remaining++;
