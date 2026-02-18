function estado_player_control(){ // Inicio del Script

depth = -99;

// Inputs

der = keyboard_check( ord("D") );
izq = keyboard_check( ord("A") );
arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );
interact = keyboard_check_pressed( ord("E"))
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);
habilidad = mouse_check_button_pressed(mb_left);
tab = keyboard_check(vk_tab);

// Estado de Movimiento
	// (moving = true) = El personaje se está moviendo
	// (moving = false) = El personaje está quieto

if (izq or der) && !(izq && der) {
	moving = true;
}
if !(izq or der) || (izq && der) {
	moving = false;
}

// Movimiento

xspd = ( der - izq ) * moveSpd;

x += xspd;
y += yspd;

// Aceleración

if moving == false && !place_meeting(x,y,roomwalkObj) {
	xspd = -1.2 * image_xscale
	accelTimer--;
} else {
	accelTimer = accelFrames
}

if (accelTimer <= 0) && !place_meeting(x,y,roomwalkObj) {
	xspd = 0
}

// CoyoteTime

if coyoteHangTmr > 0 {
	coyoteHangTmr--;
} else {
	yspd += gravedad;
	setOnground(false)
}

// Deslizamiento de babosa

if place_meeting(x , y, walljumpableObj) && !contSuelo && yspd > 0 && (moving == true) {
	yspd += wallGrav;
	yspd = min(yspd, wallFallMax);
}

// Salto

if contSuelo == true {
	jumpCount = 0;
	coyoteJumpTmr = coyoteJumpFrm;
} else {
	coyoteJumpTmr--;
	if jumpCount == 0 && coyoteJumpTmr <= 0 {
		jumpCount = 1;
	}
}

if place_meeting(x, y, jumpOrb) {
	jumpCount = 0;
}

if jump && ( jumpCount < jumpMax ) {
	jumpCount++;
	jumpTimer = jumpHoldFrames;
}

if !jumphold {
	jumpTimer = 0;
}

if jumpTimer > 0 {
	yspd = jumpSpd;
	jumpTimer--;
}

// Walljump

if place_meeting(x, y, walljumpableObj) && (contSuelo == false) && jump && (moving == true) {
	jumpCount = jumpCount -1;
	yspd = wallyspd;
	walljumpTimer = walljumpFrames;
	estado = states.walljump;
} else if contSuelo == true {
	walljumpTimer = 0
}

if walljumpTimer <= 0 {
	wallspd = 0;
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

// Hechizo

if habilidad {
	estado = states.hechizo
}

// Muerte

if (place_meeting(x,y,deathObj) || place_meeting(x, y, puertaObj) || place_meeting(x, y, puertaSumObj)) {
	estado = states.muerte
}

// Transición

if (place_meeting(x,y, roomwalkObj)) {
	estado = states.transicion
}

// Sprites

if (moving == true) && ( yspd == 0 ) && (contSuelo == true) ||
	collision_rectangle(x-6, y, x+6, y+1, colisionMovObj, true, true) && moving==true && yspd = 5 {
		sprite_index = caminSpr;
	} else {
		if cursorObj.cursorstate <= 1 {
		sprite_index = tiesoSpr;
		}
		if cursorObj.cursorstate == 2 {
		sprite_index = tiesoupSpr;
		}
		if cursorObj.cursorstate == 3 {
		sprite_index = tiesodownSpr;
		}
	}
	
	if ( yspd < 0 ) && (contSuelo == false) {
		sprite_index = saltoSpr;
	}
	
	if ( yspd > 6 ) && (contSuelo == false) {
		sprite_index = caidaSpr;
	}
		
	if ( accelTimer > 0 ) && (moving == false) && (contSuelo == true) && !place_meeting(x,y,roomwalkObj) {
		sprite_index = inbtwSpr;
	}
	
	if place_meeting(x, y, walljumpableObj) && (moving == true) && (yspd > 0) {
		sprite_index = wallcaidaSpr;
	}
	
	if place_meeting(x, y, walljumpableObj) && (yspd <= 0) && (moving = true) && contSuelo == false {
		sprite_index = wallsubidaSpr;
	}
	

} // Fin del Script