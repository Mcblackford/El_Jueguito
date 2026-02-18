function estado_player_muerte(){ // Inicio del Script
	
sprite_index = deathSpr;
depth = -120;

// Muerte

if place_meeting(x,y, deathObj) {
	xspd = 0;
	yspd = 0;
	gravedad = 0;
	moveSpd = 0;
}

if (image_index > image_number-1) {
	if (file_exists("checkpoint.ini")) {
		ini_open("checkpoint.ini")
		
		x = ini_read_real ("player", "x", x);
		y = ini_read_real ("player", "y", y);
		
		ini_close();
	}
	estado = states.control;
}

} // Fin del script