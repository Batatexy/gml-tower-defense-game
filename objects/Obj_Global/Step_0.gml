//Deixar em fullscreen com alt + enter
var alt = keyboard_check(vk_alt) 
var enter = keyboard_check_pressed(vk_enter)
var f11 = keyboard_check_pressed(vk_f11)

if (alt and enter) or f11
{
	window_set_fullscreen(!window_get_fullscreen())
}

if keyboard_check_pressed(vk_escape)
{
	global.pause = !global.pause
}

//Código feito por: Peyton Burnham
if !instance_exists(Obj_Player) exit

global.camFollowX = Obj_Player.x
global.camFollowY = Obj_Player.y

if global.pause = 0
{
	var camWidth  = camera_get_view_width(view_camera[0])
	var camHeight = camera_get_view_height(view_camera[0])

	var camX = global.camFollowX - camWidth/2
	var camY = global.camFollowY - camHeight/2

	global.finalCamX += (camX - global.finalCamX) * camTrailSpeed
	global.finalCamY += (camY - global.finalCamY) * camTrailSpeed

	camera_set_view_pos(view_camera[0], global.finalCamX, global.finalCamY)
}
