var _key_left = keyboard_check(ord("A"));
var _key_right = keyboard_check(ord("D"));
var _key_jump = keyboard_check_pressed(vk_space);
var _tlst_colld = layer_tilemap_get_id("Tiles_1");

// movement

var _move = (_key_right - _key_left) * walksp;

hsp = Approach(hsp, _move, accel);

vsp = vsp + grv;

if (place_meeting(x,y+1,[_tlst_colld,obj_invisWall]))
{
	grounded = true;
}
else if (place_meeting(x,y+1,[_tlst_colld,obj_noWallJump]))
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
	else if (place_meeting(x+3,y,[_tlst_colld,obj_invisWall]))
	{
		hsp = -walksp*2.5;
		vsp = -jumpsp + vsp*0.25;
	}
	else if (place_meeting(x-3,y,[_tlst_colld,obj_invisWall]))
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
if (place_meeting(x+hsp,y, [_tlst_colld,obj_invisWall]))
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

if (place_meeting(x+hsp,y,[_tlst_colld,obj_noWallJump]))
{
	hsp = 0;
}

x = x + hsp

//vertical collision

if(place_meeting(x,y+vsp,[_tlst_colld,obj_invisWall]))
{
	while (!place_meeting(x,y+sign(vsp),[_tlst_colld,obj_invisWall]))
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