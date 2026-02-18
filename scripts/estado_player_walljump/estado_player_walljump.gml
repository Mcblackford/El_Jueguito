function estado_player_walljump(){ // Inicio del Script

depth = -99;

// Inputs

habilidad = mouse_check_button_pressed(mb_left);
tab = keyboard_check(vk_tab);

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

// Walljump

if walljumpTimer > 0 {
	wallspd = wallxspd * (izq - der);
	xspd = wallspd;
	walljumpTimer--;
}

if contSuelo == true {
	walljumpTimer = 0
}

if walljumpTimer <= 0 {
	wallspd = 0;
	estado = states.control
}

// Hechizo

if habilidad {
	estado = states.hechizo
}

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

x += xspd;
y += yspd;

// Muerte

if (place_meeting(x,y,deathObj) || place_meeting(x, y, puertaObj) || place_meeting(x, y, puertaSumObj)) {
	estado = states.muerte
}

if tab {
	estado = states.tieso
}

sprite_index = saltoSpr;

} // Fin del Script