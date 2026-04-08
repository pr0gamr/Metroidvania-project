if (grapple == false)
{
	var _hook_drirection = darctan2((y - mouse_y),(x - mouse_x))
	show_debug_message(string(_hook_drirection))
	var _hook_speed = (25/90)
	var _hook = instance_create_layer(x,y,layer,obj_hook);
	with(_hook)
	{
		hsp = ((abs(_hook_drirection) - 90)) * _hook_speed
		if (_hook_drirection >= 90)
		{
			vsp = ((_hook_drirection) - 180) * _hook_speed
		}
		else if (_hook_drirection <= 90 and _hook_drirection >= 0)
		{
			vsp = -((_hook_drirection)) * _hook_speed
		}
		else if (_hook_drirection >= -90 and _hook_drirection <= 0)
		{
			vsp = -((_hook_drirection)) * _hook_speed
		}
		else if (_hook_drirection >= -180 and _hook_drirection <= -90)
		{
			vsp = ((_hook_drirection) + 180) * _hook_speed
		}
		
		hsp += obj_player.hsp
		vsp += obj_player.vsp
		show_debug_message("vsp = " + string(vsp))
		show_debug_message("hsp = " + string(hsp))
	}
	grapple = true;
}
else
{
	grapple = false
}