draw_text(real_x + 450, real_y, "Wave: " + string(obj_wave_manager.index) + 
			"/" + string(array_length(obj_wave_manager.wave_current)));
draw_text(real_x, real_y, 
			"Enemies Remaining: " + string(obj_wave_manager.enemies_remaining));
draw_text(real_x + 800, real_y + 450, 
			"Score: " + string(obj_wave_manager.points));
draw_text(real_x + 800, real_y + 500, 
			"High Score: " + string(obj_points_manager.highscore));