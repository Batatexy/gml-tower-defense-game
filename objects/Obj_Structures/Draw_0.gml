draw_self()

if shootStructure != 0
{
	if instance_exists(Obj_Enemys)
	{
		angle = point_direction(x + 8, y + 8, Obj_Enemys.x, Obj_Enemys.y);
	}
	
	
	if shootStructure = 1
	{
		// Desenhar o sprite da parte de cima da crossbow
		draw_sprite_ext
		(Spr_Crossbow_Above, imageIndexAvove, x + 8, y + 8, 1, 1, angle, c_white, 1)
	
		draw_sprite_ext
		(Spr_Crossbow_Strings, imageIndexStrings, x + 8, y + 8, 1, 1, angle, c_white, 1)
	}
	
	
}