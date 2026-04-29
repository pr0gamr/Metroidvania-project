movement()
enemy_collision()

if attackCd > 0
{
	attackCd -= 1
}

function enemy_collision()
{
	if !iFrames
	{
		if place_meeting(x,y,instance_nearest(x,y,obj_enemy_main))
		{
			if x > instance_nearest(x,y,obj_enemy_main).x
			{
				hsp = 10
			}
			else if x <= instance_nearest(x,y,obj_enemy_main).x
			{
				hsp = -10
			}
			vsp = -5
			instance_nearest(x,y,obj_enemy_main).moveSpeed = instance_nearest(x,y,obj_enemy_main).moveSpeed * -1
			iFrames = 20
			player_health -= 1
		}
	}
	if player_health <= 0 instance_destroy(self)
	if iFrames > 0 
	{
		iFrames -= 1;
	}
}

function movement()
{
var _key_left = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));
var _key_jump = keyboard_check_pressed(vk_space);

// movement

var _move = (_key_right - _key_left) * walksp;

hsp = Approach(hsp, _move, accel);

vsp = vsp + grv;

if (place_meeting(x,y+1,obj_invisWall))
{
	grounded = true;
}
else if (place_meeting(x,y+1,obj_noWallJump))
{
	grounded = true;
}
else
{
	grounded = false;
}

if (_key_jump and canjump)
{
	if (grounded)
	{
		vsp = -jumpsp;
	}
	else if (place_meeting(x+3,y,obj_invisWall))
	{
		hsp = -walksp*2.5;
		vsp = -jumpsp + vsp*0.25;
	}
	else if (place_meeting(x-3,y,obj_invisWall))
	{
		hsp = walksp*2.5;
		vsp = -jumpsp + vsp*0.25;
	}
}

if (_move > 0)
{
	facing = 1;
}
else if (_move < 0)
{
	facing = -1;
}

//horizontal collision
if (place_meeting(x+hsp,y,obj_invisWall))
{
	hsp = 0;
	if (vsp >= 1)
	{
		vsp = Approach(vsp, 1.5, 2);
	}
}
if (place_meeting(x+hsp,y,obj_bouncefloor))
{
	hsp = 0;
	if (vsp >= 1)
	{
		vsp = Approach(vsp, 1.5, 2);
	}
}

if (place_meeting(x+hsp,y,obj_noWallJump))
{
	hsp = 0;
}

x = x + hsp

//vertical collision

if(place_meeting(x,y+vsp,obj_invisWall))
{
	while (!place_meeting(x,y+sign(vsp),obj_invisWall))
	{
		y = y + sign(vsp);
	}
vsp = 0;
}
if(place_meeting(x,y+vsp,obj_bouncefloor))
{
	vsp = -vsp * 0.95;
}
if(place_meeting(x,y+vsp,obj_noWallJump))
{
	while (!place_meeting(x,y+sign(vsp),obj_noWallJump))
	{
		y = y + sign(vsp);
	}
vsp = 0;
}

y = y + vsp
}

function Approach(speed, max_speed, acceleration)
{
    if (speed < max_speed) {
        speed += acceleration;
        if (speed > max_speed) {
            return max_speed;
        }
    } else {
        speed -= acceleration;
    
        if (speed < max_speed) {
            return max_speed;
        }
    }
    return speed;
}