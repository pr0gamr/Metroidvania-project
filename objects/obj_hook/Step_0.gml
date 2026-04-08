

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
		if (y > obj_hook.y-20)
		{
			vsp = -10
		}
		else if (y < obj_hook.y-20)
		{
			vsp = 10
		}
		else
		{
			vsp = 0
		}
		if (x < obj_hook.x)
		{
			hsp = 10
		}
		else if (x > obj_hook.x)
		{
			hsp = -10
		}
		else
		{
			hsp = 0
		}
		grv = 0;
		canjump = false
	}
}