if (instance_exists(target))
{
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    var dest_x = target.x - (cam_wid * .5);
    var dest_y = target.y - (cam_hei * .5);

    dest_x = clamp(dest_x, 0, room_width - cam_wid);
    dest_y = clamp(dest_y, 0, room_height - cam_hei);

    real_x = lerp(cam_x, dest_x, lerp_tx);
    real_y = lerp(cam_y, dest_y, lerp_ty);

    camera_set_view_pos(view_camera[0], real_x, real_y);
} 
else 
{
    if (instance_exists(obj_player))
	{
        target = obj_player;
    }
}
