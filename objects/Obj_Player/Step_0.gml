event_inherited();

Controls()

if toolSelected < 1
{
	toolSelected = 3
}

if toolSelected > 3
{
	toolSelected = 1
}





if shift
{
	if number1
	{
		toolSelected = 1
	}
	if number2
	{
		toolSelected = 2
	}
	if number3
	{
		toolSelected = 3
	}
	
	if scrollUp{toolSelected--}
	if scrollDown{toolSelected++}
}
else
{
	if number1{structureSelected = 1}
	if number2{structureSelected = 2}
	if number3{structureSelected = 3}
	if number4{structureSelected = 4}
	if number5{structureSelected = 5}
	if number6{structureSelected = 6}
	if number7{structureSelected = 7}
	if number8{structureSelected = 8}
	if number9{structureSelected = 9}
	if number0{structureSelected = 10}
	if keySub{structureSelected = 11}
	if keyAdd{structureSelected = 12}

	if scrollUp{structureSelected++}
	if scrollDown{structureSelected--}
}
if structureSelected < 1
{
	structureSelected = 12
}

if structureSelected > 12
{
	structureSelected = 1
}




if leftMouse
{
	//Picareta
	if toolSelected = 1
	{
		
	}
	//Espada
	else if toolSelected = 2
	{
		
	}
}

if leftMousePressed
{
	//Arco
	if toolSelected = 3 and bowShootTrigger = 0
	{
		randomDirection = 0
		
		if bowPreciseShoot = 0
		{
			randomDirection = int64(random_range(-15,15))
		}
		
		angle = point_direction(x,y,mouse_x,mouse_y) + randomDirection
		instance_create_layer(x,y,"Instances", Obj_Player_Arrow)
		
		holdBowTimer = holdBowTimerValue
		bowShootTrigger = 1
	}
}

if bowShootTrigger = 1
{
	ShootTimer++
	
	if ShootTimer > ShootTimerValue
	{
		ShootTimer = -1
		bowShootTrigger = 0
	}
}

if rightMouse
{
	//Colocar Blocos
	if toolSelected = 1
	{
		switch structureSelected
		{
			case 1:
			{
				placeBlocks("Structures", Obj_Placeable_Wall)
				break
			}
			
			case 2:
			{
				
				break
			}
			
			case 3:
			{
				placeBlocks("Structures", Obj_Crossbow)
				break
			}
			
			
		}
		
	}
	
	//Arco
	else if toolSelected = 3
	{		
		holdBowTimer--
		
		if holdBowTimer <= 0
		{
			holdBowTimer = 0
			bowPreciseShoot = 1
		}
		else
		{
			bowPreciseShoot = 0
		}
	}
}
else
{
	holdBowTimer++
}

if holdBowTimer >= holdBowTimerValue
{
	holdBowTimer = holdBowTimerValue
}



