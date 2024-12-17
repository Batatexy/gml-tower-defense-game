localX = Obj_Player.x - findXPosition(Obj_Player.x, 8) - global.subPixel
localY = Obj_Player.y - findYPosition(Obj_Player.y, 8) - global.subPixel

//Desenhar Linhas ao colocar blocos
var color = c_black


draw_set_alpha(0.1)

for (var i = -10; i < 10; i++)
{
	draw_line_width_color
	(
	    Obj_Player.x - 130 , localY + (i*8) - 0.5 ,
	    Obj_Player.x + 130 , localY + (i*8) - 0.5 , 1 , color, color
	)
	

}

for (var i = -20; i < 20; i++)
{
	draw_line_width_color
	(
		localX + (i*8) - 0.5 , Obj_Player.y - 80 ,
		localX + (i*8) - 0.5 , Obj_Player.y + 80 , 1 , color, color
	)
}






