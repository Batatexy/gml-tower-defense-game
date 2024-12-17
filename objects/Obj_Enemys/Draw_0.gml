draw_self()

var varX = -8
var varY = -8

//Achar o valor da barra
if life > 0
{
	lifeSize = (life / lifeValue) * 70
}
else
{
	lifeSize = 0
}

//Barra de Vida dos inimigos
if sprite_index = Spr_Small_Circle
{
	draw_set_alpha(0.75)
	draw_rectangle_colour(x + 1 + varX, y + 1 + varY, x + 14 + varX, y + 2 + varY, 100, 100, 100, 100, false);

	draw_set_alpha(1)
	draw_rectangle_colour(x + 1 + varX, y + 1 + varY, x + lifeSize / 5 + varX, y + 2 + varY, c_red, c_red, c_red, c_red, false);
}