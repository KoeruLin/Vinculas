/// @description Insert description here
// You can write your code in this editor
target = noone;

if (instance_exists(obj_player))
{
    target = obj_player;
}

cam_wid = camera_get_view_width(view_camera[0]);
cam_hei = camera_get_view_height(view_camera[0]);

lerp_tx = .2;
lerp_ty = .4;

real_x = camera_get_view_x(view_camera[0]);
real_y = camera_get_view_y(view_camera[0]);