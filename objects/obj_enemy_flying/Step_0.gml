if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 600
	{
		mp_potential_step_object(obj_player.x,obj_player.y,moveSpeed,obj_collisionbox)
	}
}
if moveSpeed < 0 and !alarm_get(0)
{
	alarm_set(0,10)
}

if (x < obj_player.x){
	image_xscale = -1;
}
else {
	image_xscale = 1;
}

x += e_hsp
y += e_vsp

if e_health <= 0
{
	moveSpeed = 0;
	if sprite_index != spr_pigeon_death
	{
	e_vsp = random_range(-15,-30);
	}
	sprite_index = spr_pigeon_death;
	e_vsp += grv
}