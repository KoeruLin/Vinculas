is_enemy = false;
damage = obj_player.damage
is_projectile = true;
angle = point_direction(x, y, mouse_x, mouse_y) + irandom_range(-45, 45);
spd = 20;
enemy_list = ds_list_create();
target = noone;