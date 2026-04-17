if (place_meeting(x,y,obj_player))
{
	obj_player.grv = grv
	obj_player.canjump = true
	obj_player.grapple = false
	instance_destroy(self)
}

alarm_set(0,1)