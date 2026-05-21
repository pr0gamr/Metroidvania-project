if instance_exists(obj_player)
{
	if distance_to_object(obj_player) < 200 and !hit
	{
		if x > obj_player.x+2 e_hsp = -2
		else if x < obj_player.x-2 e_hsp = 2
	}
}


var _tlst_colld = layer_tilemap_get_id("Tiles_1");
e_vsp += grv

if (place_meeting(x+e_hsp,y,[_tlst_colld,obj_noWallJump]))
{
	e_hsp = 0;
}
if(place_meeting(x,y+e_vsp,[_tlst_colld,obj_invisWall,obj_noWallJump]))
{
	while (!place_meeting(x,y+sign(e_vsp),[_tlst_colld,obj_invisWall,obj_noWallJump]))
	{
		y = y + sign(e_vsp);
	}
e_vsp = 0;
}
x += e_hsp
y += e_vsp
if e_health <= 0
{
	instance_destroy(self)
}