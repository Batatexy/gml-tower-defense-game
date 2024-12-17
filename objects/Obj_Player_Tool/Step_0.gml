x = Obj_Player.x
y = Obj_Player.y

image_angle = direction

//Escolher qual ferramenta
if Obj_Player.toolSelected = 1
{
	direction = point_direction(x, y, mouse_x, mouse_y) + 80
	sprite_index = Spr_Pickaxe
}

if Obj_Player.toolSelected = 2
{
	direction = point_direction(x, y, mouse_x, mouse_y) + 80
	
	if Obj_Player.tools[2] != -1
	{
		sprite_index = Spr_Sword
	}
	else
	{
		sprite_index = Spr_Hollow
	}
}

if Obj_Player.toolSelected = 3
{
	direction = point_direction(x, y, mouse_x, mouse_y) + 90
	
	if Obj_Player.tools[3] != -1
	{
		sprite_index = Spr_Bow
		
			if Obj_Player.holdBowTimer >= Obj_Player.holdBowTimerValue * 0.6
			{
				image_index = 1 + (Obj_Player.tools[3] * 3)
			}
			else if Obj_Player.holdBowTimer > 0 and 
			Obj_Player.holdBowTimer < Obj_Player.holdBowTimerValue * 0.6
			{
				image_index = 2 + (Obj_Player.tools[3] * 3)
			}
			else
			{
				image_index = 3 + (Obj_Player.tools[3] * 3)
			}
		
	}
	else
	{
		sprite_index = Spr_Hollow
	}
}
else
{
	//Qual o level da arma
	image_index = Obj_Player.tools[Obj_Player.toolSelected]
}
