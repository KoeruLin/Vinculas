// play animation
if (buff_triggered)
{
	obj_wave_manager.roulette_object_summoned = false;
	obj_wave_manager.cleared = false;
	obj_wave_manager.wave_summoned = false;
	instance_create_depth(x, y, 0, obj_buff_visualizer);
	instance_destroy(self);
}