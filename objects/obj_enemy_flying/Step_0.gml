if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 2000
	{
		mp_potential_step_object(obj_player.x,obj_player.y,moveSpeed,obj_collisionbox)
	}
}
if moveSpeed < 0 and !alarm_get(0)
{
	alarm_set(0,10)
}

x += e_hsp
y += e_vsp

if e_health <= 0
{
	instance_destroy(self)
}