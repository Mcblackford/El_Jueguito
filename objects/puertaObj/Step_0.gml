depth = -100;

if instance_exists(SwitchObj) {
var _sw = instance_find(SwitchObj,0);
if _sw.palanca == true
{
   if (start_y - sprite_height < y) {y -= 3}
} else {
	if (y < start_y) {if (!place_meeting(x, y + 4, playerObj))
		{y +=10} 
		else 
			{
			//aqui coloca lo q quieras q pase si el jugador si esta debajo de la puerta//
			}
		}
}
}