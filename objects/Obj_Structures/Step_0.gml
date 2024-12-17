if shootStructure != 0
{
	if shootStructure = 1 and ShootTimer <= ShootTimerValue * 0.3 and createProjectible = 0
	{
		instance_create_layer(x + 8,y + 8,"Instances", Obj_Arrow)
		createProjectible = 1
	}
			
			
	ShootTimer--
	
	if ShootTimer < 0
	{
		if instance_exists(Obj_Enemys)
		{
			nearestEnemy = instance_nearest(x,y,Obj_Enemys)
			distance = distance_to_object(nearestEnemy)
			
			if shootStructure = 2
			{
				instance_create_layer(x + 8,y + 8,"Instances", Obj_Ball)
			}
			
			else if shootStructure = 3
			{
				instance_create_layer(x + 8,y + 8,"Instances", Obj_Bomb)
			}
			
			else if shootStructure = 4
			{
				instance_create_layer(x + 8,y + 8,"Instances", Obj_Magic)
			}
			
			createProjectible = 0
			ShootTimer = ShootTimerValue
		}
	}
}

