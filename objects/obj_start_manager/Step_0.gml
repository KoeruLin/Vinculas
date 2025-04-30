gpu_set_tex_filter(false);

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self))
{
	var button_sound = audio_play_sound(_506053__mellau__button_click_2, 0, false);
	audio_sound_pitch(button_sound, random_range(0.8, 1.2))
	room_goto(MainGame);
}