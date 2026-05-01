

if !(collision_rectangle(x-17,y-17-sign(vsp),x+17,y+17+sign(vsp),obj_invisWall,false,true))
{
	sprite_index = spr_hook_spin;
	vsp = vsp + grv;
	y = y + vsp
	x = x + hsp
}
else
{
	sprite_index = spr_hook_lodge;
	if (x < obj_player.x){
		image_xscale = -1;
	}
	vsp = 0
	hsp = 0
	with obj_player
	{
		var _hook_direction = darctan2((y - obj_hook.y),(x - obj_hook.x))
		//show_debug_message(string(_hook_direction))
		var _hook_speed = (25/90)
		hsp = ((abs(_hook_direction) - 90)) * _hook_speed
		if (_hook_direction >= 90)
		{
			vsp = ((_hook_direction) - 180) * _hook_speed
		}
		else if (_hook_direction <= 90 and _hook_direction >= 0)
		{
			vsp = -((_hook_direction)) * _hook_speed
		}
		else if (_hook_direction >= -90 and _hook_direction <= 0)
		{
			vsp = -((_hook_direction)) * _hook_speed
		}
		else if (_hook_direction >= -180 and _hook_direction <= -90)
		{
			vsp = ((_hook_direction) + 180) * _hook_speed
		}
		grv = 0;
		canjump = false
	}
}