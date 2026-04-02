if (grapple == false)
{
	var _hook_drirection = point_direction(x,y,mouse_x,mouse_y)
	var _hook = instance_create_layer(x,y,layer,obj_hook);
	with(_hook)
	{
		direction = _hook_drirection
	}
	grapple = true;
}
else
{
	grapple = false
}