

if !(collision_rectangle(x-17,y-17-sign(vsp),x+17,y+17+sign(vsp),obj_invisWall,false,true))
{
	vsp = vsp + grv;
	y = y + vsp
	x = x + hsp
}
else
{
	vsp = 0
	hsp = 0
	with obj_player
	{
		var _hook_drirection = darctan2((y - obj_hook.y),(x - obj_hook.x))
		//show_debug_message(string(_hook_drirection))
		var _hook_speed = (25/90)
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
		grv = 0;
		canjump = false
	}
}