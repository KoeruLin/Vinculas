cleared = true;
roulette_object_summoned = false;
wave_summoned = false;
wave_current = array_create(11);
index = 0;
wave_number = array_length(wave_current);
spawners = [];

for (var i = 0; i < instance_number(obj_spawner); ++i;)
{
    spawners[i] = instance_find(obj_spawner,i);
}

wave_one = array_create(4);
wave_one[0] = obj_knight;
wave_one[1] = obj_knight;
wave_one[2] = obj_knight;
wave_one[3] = obj_knight;
wave_current[0] = wave_one;

wave_two = array_create(4);
wave_two[0] = obj_knight;
wave_two[1] = obj_tank;
wave_two[2] = obj_tank;
wave_two[3] = obj_tank;
wave_current[1] = wave_two;

wave_three = array_create(4);
wave_three[0] = obj_archer;
wave_three[1] = obj_knight;
wave_three[2] = obj_archer;
wave_three[3] = obj_knight;
wave_current[2] = wave_three;

wave_four = array_create(6)
wave_four[0] = obj_knight;
wave_four[1] = obj_knight;
wave_four[2] = obj_tank;
wave_four[3] = obj_archer;
wave_four[4] = obj_archer;
wave_four[5] = obj_archer;
wave_current[3] = wave_four;

wave_five = array_create(8)
wave_five[0] = obj_archer;
wave_five[1] = obj_archer;
wave_five[2] = obj_archer;
wave_five[3] = obj_archer;
wave_five[4] = obj_archer;
wave_five[5] = obj_archer;
wave_five[6] = obj_archer;
wave_five[7] = obj_archer;
wave_current[4] = wave_five;

wave_six = array_create(2);
wave_six[0] = obj_necromancer;
wave_six[1] = obj_necromancer;
wave_current[5] = wave_six;

wave_seven = array_create(9);
wave_seven[0] = obj_archer;
wave_seven[1] = obj_tank;
wave_seven[2] = obj_tank;
wave_seven[3] = obj_archer;
wave_seven[4] = obj_tank;
wave_seven[5] = obj_tank;
wave_seven[6] = obj_archer;
wave_seven[7] = obj_tank;
wave_seven[8] = obj_tank;
wave_current[6] = wave_seven;

wave_eight = array_create(11);
wave_eight[0] = obj_archer;
wave_eight[1] = obj_archer;
wave_eight[2] = obj_archer;
wave_eight[3] = obj_knight;
wave_eight[4] = obj_knight;
wave_eight[5] = obj_knight;
wave_eight[6] = obj_tank;
wave_eight[7] = obj_tank;
wave_eight[8] = obj_tank;
wave_eight[9] = obj_tank;
wave_eight[10] = obj_tank;
wave_current[7] = wave_eight;

wave_nine = array_create(14);
wave_nine[0] = obj_archer;
wave_nine[1] = obj_knight;
wave_nine[2] = obj_tank;
wave_nine[3] = obj_tank;
wave_nine[4] = obj_tank;
wave_nine[5] = obj_knight;
wave_nine[6] = obj_knight;
wave_nine[7] = obj_knight;
wave_nine[8] = obj_knight;
wave_nine[9] = obj_knight;
wave_nine[10] = obj_knight;
wave_nine[11] = obj_knight;
wave_nine[12] = obj_knight;
wave_nine[13] = obj_knight;
wave_current[8] = wave_nine;

wave_ten = array_create(8);
wave_ten[0] = obj_necromancer;
wave_ten[1] = obj_archer;
wave_ten[2] = obj_necromancer;
wave_ten[3] = obj_archer;
wave_ten[4] = obj_necromancer;
wave_ten[5] = obj_archer;
wave_ten[6] = obj_necromancer;
wave_ten[7] = obj_archer;
wave_current[9] = wave_ten;

wave_eleven = array_create(5);
wave_eleven[0] = obj_necromancer;
wave_eleven[1] = obj_necromancer;
wave_eleven[2] = obj_necromancer;
wave_eleven[3] = obj_necromancer;
wave_eleven[4] = obj_necromancer;
wave_current[10] = wave_eleven;

enemies_remaining = 0;
points = 0;
highscore = 0;
instances = 0;
global.reset_game = false;