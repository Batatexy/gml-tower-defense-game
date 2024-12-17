event_inherited();

//Trocar o level da crossbow
switch image_index
{
	case 0:
	{
		imageIndexAvove = 0
		break
	}
	
	case 1:
	{
		imageIndexAvove = 1
		break
	}


}

if ShootTimer >= ShootTimerValue * 0.6
{
	imageIndexStrings = 0
}
else if ShootTimer >= ShootTimerValue * 0.3 and ShootTimer < ShootTimerValue * 0.6
{
	imageIndexStrings = 1
}
else
{
	imageIndexStrings = 2
}


