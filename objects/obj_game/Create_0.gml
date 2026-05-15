if instance_number(obj_game) > 1 instance_destroy(self)

globalvar playerX
globalvar playerY
globalvar player_health
globalvar roomStartX
globalvar roomStartY
globalvar player_maxHp




globalvar walls[]
walls = [obj_bouncefloor, obj_invisWall, obj_noWallJump, obj_hurtSurface]

//golbo

//fps stuff
game_set_speed(60,fps);
display_reset(0,true);