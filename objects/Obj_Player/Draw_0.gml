event_inherited();

image_blend = make_color_rgb(red,red,red)

//Barra de Vida e Stamina
draw_set_alpha(0.75)
draw_rectangle_colour(global.finalCamX + 1, global.finalCamY + 1, global.finalCamX + lifeValue / 1.5, global.finalCamY + 5, 100, 100, 100, 100, false);
draw_rectangle_colour(global.finalCamX + 1, global.finalCamY + 7, global.finalCamX + staminaValue / 1.5, global.finalCamY + 11, 100, 100, 100, 100, false);

draw_set_alpha(1)
draw_rectangle_colour(global.finalCamX + 1, global.finalCamY + 1, global.finalCamX + life / 1.5, global.finalCamY + 5, c_red, c_red, c_red, c_red, false);
draw_rectangle_colour(global.finalCamX + 1, global.finalCamY + 7, global.finalCamX + stamina / 1.5, global.finalCamY + 11, c_green, c_green, c_green, c_green, false);



//Gerar o fundo
for (var i = 1; i < 13; i ++)
{
	draw_sprite_ext(Spr_Mold, 0, global.finalCamX + 7 + (i * 15) , global.finalCamY + 110 , 1, 1, 0, c_white, 1);
}


//Gerar as bases de várias estruturas
var distanceX = 56
var distanceY = 114

for (var i = 0; i < 10; i ++)
{
	draw_sprite_ext(Spr_Base, 0, global.finalCamX + distanceX + (i * 15), global.finalCamY + distanceY,  0.5, 0.5, 0, c_white, 1);
}
//Gerar parede
draw_sprite_ext(Spr_Placeable_Wall, 0, global.finalCamX + 27.5 , global.finalCamY + 115 ,  0.75, 0.75, 0, c_white, 1);


//Gerar detalhes em algumas estruturas
draw_sprite_ext(Spr_Crossbow_Above, 0, global.finalCamX + distanceX + 4 , global.finalCamY + distanceY + 4,  0.5, 0.5, 0, c_white, 1);
draw_sprite_ext(Spr_Crossbow_Strings, 2, global.finalCamX + distanceX + 4 , global.finalCamY + distanceY + 4,  0.5, 0.5, 0, c_white, 1);


for (var i = 1; i < 13; i ++)
{
	if i != structureSelected
	{
		draw_sprite_ext(Spr_Mold, 0, global.finalCamX + 7 + (i * 15) , global.finalCamY + 110 , 1, 1, 0, c_white, 0.5);
	}
	else
	{
		draw_sprite_ext(Spr_Mold_Selected, 0, global.finalCamX + 7 + (i * 15) , global.finalCamY + 110 , 1, 1, 0, c_white, 1);
	}
}







//draw_text(x-20,y,bowPreciseShoot)

