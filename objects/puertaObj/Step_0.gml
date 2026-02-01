depth = -100;

if switchObj.switchID == doorID {
if switchObj.palanca == true
{
   if (start_y - sprite_height < y) {y -= 3}
} else {
	if (y < start_y) {if (!place_meeting(x, y + 4, playerObj))
		{y +=10} 
		else 
			{
			if (file_exists("checkpoint.ini")) {
	ini_open("checkpoint.ini")
	
	playerObj.x = ini_read_real ("player", "x", x);
	playerObj.y = ini_read_real ("player", "y", y);
	
	ini_close();
}
			}
		}
}
}