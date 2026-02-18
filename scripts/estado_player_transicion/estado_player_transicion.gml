function estado_player_transicion(){ // Inicio del Script

sprite_index = caminSpr;
depth = -99;

// Colision

if xspd != 0 && place_meeting(x + xspd, y, colisionObj){
	var _pixelcheck = sign(xspd);
	while !place_meeting(x + _pixelcheck, y, colisionObj) {
		x += _pixelcheck;
	}
	xspd = 0;
}

if yspd != 0 && place_meeting(x, y + yspd, colisionObj) {
	var _pixelcheck = sign(yspd);
	while !place_meeting(x, y + _pixelcheck, colisionObj) {
	y += _pixelcheck;
	}
	yspd = 0;
}

// Transición

if place_meeting(x,y,roomwalkObj) {
	xspd = -3 * image_xscale
} else {
	estado = states.control
}

} // Fin del Script