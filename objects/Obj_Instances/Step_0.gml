if stamina < staminaValue
{
	stamina += 0.01
}

if life > 0
{
	
	if stamina > 0
	{
		
		
	}

	//Movimentação
	if (right) and (up) and !place_meeting(x + hb, y - hb, Obj_Wall)
	{
		direction = 45;
		speed = speedValue
	}
	else if (right) and (down) and !place_meeting(x + hb, y + hb, Obj_Wall) 
	{
		direction = 315;
		speed = speedValue
	}
	else if (left and up) and !place_meeting(x - hb, y - hb, Obj_Wall)
	{
		direction = 135;
		speed = speedValue
	}
	else if (left and down) and !place_meeting(x - hb, y + hb, Obj_Wall)
	{
		direction = 225;
		speed = speedValue
	}
	else if right and !place_meeting(x + hb, y , Obj_Wall)
	{
		direction = 0;
		speed = speedValue
	}
	else if up and !place_meeting(x, y - hb, Obj_Wall)
	{
		direction = 90;
		speed = speedValue
	}
	else if left and !place_meeting(x - hb, y, Obj_Wall)
	{
		direction = 180;
		speed = speedValue
	}
	else if down and !place_meeting(x, y + hb, Obj_Wall)
	{
		direction = 270
		speed = speedValue
	}
	else
	{
		speed = 0
	}
}
else
{
	speed = 0
	
	
	
	
}