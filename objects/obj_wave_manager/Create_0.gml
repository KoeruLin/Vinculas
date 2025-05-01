cleared = true;
roulette_object_summoned = false;
wave_summoned = false;
wave_current = [];
index = 0;
spawners = [];

for (var i = 0; i < instance_number(obj_spawner); ++i)
{
    spawners[i] = instance_find(obj_spawner, i);
}

wave_current[0] = array_create(8, obj_knight);

wave_current[1] = array_concat(array_create(2, obj_knight), array_create(6, obj_tank));

wave_current[2] = array_concat(array_create(4, obj_knight), array_create(4, obj_archer));

wave_current[3] = array_concat(array_create(4, obj_knight), array_create(2, obj_tank), array_create(6, obj_archer));

wave_current[4] = array_create(16, obj_archer);

wave_current[5] = array_create(4, obj_necromancer);

wave_current[6] = array_concat(array_create(12, obj_tank), array_create(6, obj_archer));

wave_current[7] = array_concat(array_create(3, obj_knight), array_create(9, obj_tank), array_create(9, obj_archer));

wave_current[8] = array_concat(array_create(19, obj_knight), array_create(6, obj_tank), array_create(3, obj_archer));

wave_current[9] = array_concat(array_create(8, obj_archer), array_create(8, obj_necromancer));

wave_current[10] = array_create(10, obj_necromancer);

wave_current[11] = array_concat(array_create(6, obj_archer), array_create(6, obj_necromancer), array_create(12, obj_tank));


wave_number = array_length(wave_current);
enemies_remaining = 0;
points = 0;
highscore = 0;
instances = 0;
global.reset_game = false;