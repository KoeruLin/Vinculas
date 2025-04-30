if (!audio_is_playing(Vocaroo_26_Apr_2025_15_40_25_EDT_1lSrBUxq6xCR) || !audio_is_playing(mixkit_ethereal_fairy_win_sound_2019))
{
	if (keyboard_check_pressed(ord("R")))
	{	
		global.reset_game = true;
		room_goto(MainGame);
	}

	if (keyboard_check_pressed(ord("F")))
	{
		game_end();
	}
}