if(instance_exists(obj_player))
{
	playerX = obj_player.x
	playerY = obj_player.y
	if player_health <= 0 
	{
		room_restart()
		instance_destroy(obj_player)
		player_health = 5
		instance_create_layer(roomStartX,roomStartY,layer, obj_player);
	}
}

