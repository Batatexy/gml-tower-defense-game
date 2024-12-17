visible = true



if trigger = 1 or timerTrigger < 0
{
	timer--
	
	if timer<0
	{
		instance_destroy()
	}
}