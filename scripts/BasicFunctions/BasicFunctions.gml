function Controls()
{
	//Botões
	leftMouse = mouse_check_button(mb_left)
	leftMousePressed = mouse_check_button_pressed(mb_left)
	rightMouse = mouse_check_button(mb_right)
	
	scrollUp = mouse_wheel_up()
	scrollDown = mouse_wheel_down()
	
	number1 = keyboard_check_pressed(ord("1"))
	number2 = keyboard_check_pressed(ord("2"))
	number3 = keyboard_check_pressed(ord("3"))
	number4 = keyboard_check_pressed(ord("4"))
	number5 = keyboard_check_pressed(ord("5"))
	number6 = keyboard_check_pressed(ord("6"))
	number7 = keyboard_check_pressed(ord("7"))
	number8 = keyboard_check_pressed(ord("8"))
	number9 = keyboard_check_pressed(ord("9"))
	number0 = keyboard_check_pressed(ord("0"))
	
	//Ver se esses funcionam
	keySub = keyboard_check_pressed(vk_subtract)
	keyAdd = keyboard_check_pressed(vk_add)
	
	shift = keyboard_check(vk_shift)
	
	up = keyboard_check(ord(upKey)) or keyboard_check(vk_up)
	right = keyboard_check(ord(rightKey)) or keyboard_check(vk_right)
	down = keyboard_check(ord(DownKey)) or keyboard_check(vk_down)
	left = keyboard_check(ord(leftKey)) or keyboard_check(vk_left)
}

function findXPosition(objectX, value)
{
	//Pegar o resto da divisão de 16 da posição do mouse x
	localX = objectX mod value
	if objectX < 0
	{
		localX += value
	}
	return localX
}

function findYPosition(objectY, value)
{
	//Pegar o resto da divisão de 16 da posição do mouse y
	localY = objectY mod value
	if objectY < 0
	{
		localY += value
	}
	return localY
}

//Colocar blocos
function placeBlocks(layerPlaced, Obj_Placed)
{
	localX = mouse_x - findXPosition(mouse_x, 8)
	localY = mouse_y - findYPosition(mouse_y, 8)
	
	instance_create_layer(localX,localY, layerPlaced, Obj_Placed)
	
}

