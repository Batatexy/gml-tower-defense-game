event_inherited();

direction = nearestObject.angle
image_angle = direction

if instance_exists(Obj_Enemys)
{
	timerTrigger--
	
	if nearestObject.ShootTimer <= 0
	{
		speed = speedValue
	}

	if place_meeting(x,y,Obj_Enemys)
	{
		speed = 0
		trigger = 1
	}
}