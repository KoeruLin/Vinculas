hit = false;
is_projectile = false;
is_enemy = true;
max_hitpoint = 150;
defense = 10;
damage = 50;
range = 30;

magnification(self, obj_wave_manager.index);

hitpoint = max_hitpoint;
spd = 5;
in_range = false;
swing_speed = 60;
cooldown = swing_speed;
obj_wave_manager.enemies_remaining++;
parent_instance = noone;
