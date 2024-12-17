if life > 0
{
	if instance_exists(Obj_Projectibles)
	{
		var nearestProjectible = instance_nearest(x,y,Obj_Projectibles)
		
		if place_meeting(x,y,nearestProjectible) and damageTrigger = 0
		{
			life -= nearestProjectible.damage
			damageTrigger = 1
		}
	}
	
	
	

	if damageTrigger = 1
	{
		damageTimer--
	
		if damageTimer < 0
		{
			damageTrigger = 0
			damageTimer = damageTimerValue
		}
	}
}
else
{
	instance_destroy()
}