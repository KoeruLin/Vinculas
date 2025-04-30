var scale_width = display_get_width() / 960;
var scale_height = display_get_height() / 540;
var scale = min(scale_width, scale_height);  

window_set_size(960 * scale, 540 * scale);