//Se é uma estrutra que atira ou não
shootStructure = 0

//Nivel da torre, variavel usado pra desenhar algo por cima da estrutura
imageIndexAvove = 0
imageIndexStrings = 0

//tempo para atirar
ShootTimerValue = 100
ShootTimer = ShootTimerValue
createProjectible = 0

//Angulo e distancia aos inimigos
angle = random_range(0,360)
nearestEnemy = false
distanceEnemy = false


//Todos os objetos colocoaveis e o player ou inimigos:
if place_meeting(x,y,Obj_Wall) or place_meeting(x,y,Obj_Instances)
or place_meeting(x,y,Obj_Enemys)
{
	instance_destroy()
}
else
{
	visible = true
}