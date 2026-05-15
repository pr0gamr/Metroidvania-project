//camera jank
var cam = view_get_camera(0)
view_set_visible(0,true)
camera_set_view_border(cam,1024,576)
camera_set_view_size(cam,1024,576)
camera_set_view_target(cam,obj_player)
camera_set_view_speed(cam,10,10)
camera_set_view_pos(cam,clamp(obj_player.x - camera_get_view_width(cam)/2,0,room_width - camera_get_view_width(cam)),clamp(obj_player.y - camera_get_view_height(cam)/2,0,room_height - camera_get_view_height(cam)))
window_set_size(1366,768)
