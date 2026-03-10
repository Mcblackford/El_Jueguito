function estado_player_walljump(){ // Inicio del Script

depth = -99;

// Inputs

interact = keyboard_check_pressed( ord("E"));
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);
habilidad = mouse_check_button_pressed(mb_left);
tab = keyboard_check_pressed(vk_tab);

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
	xspd -= walldeccel * (izq -der);
	walljumpTimer--;
}

if contsuelo == true {
	walljumpTimer = 0
}

if walljumpTimer <= 0 {
	wallspd = 0;
	estado = states.control
}

// Hechizo

condicion_de_hechizo()

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

condicion_de_muerte()

// Inventario

condicion_de_inventario()

// Sprite

sprite_index = saltoSpr;

} // Fin del Script