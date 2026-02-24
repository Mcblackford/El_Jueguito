function estado_player_control(){ // Inicio del Script

depth = -99;

// Cooldown

if habilidadcooldown > 0 {
	habilidadcooldown--;
}

// Inputs

moving = false

der = keyboard_check( ord("D") );
izq = keyboard_check( ord("A") );
arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );
interact = keyboard_check_pressed( ord("E"));
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);
habilidad = mouse_check_button_pressed(mb_left);
tab = keyboard_check_pressed(vk_tab);

if der {
	image_xscale = -2.5;
}
if izq {
	image_xscale = 2.5;
}

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

if collision_rectangle(x-22, y, x+22, y+5, colisionObj, true, true) {
	contsuelo = true;
	coyoteHangTmr = 0;
	coyoteJumpTmr = 0;
} else {
	contsuelo = false;
	coyoteHangTmr++;
	coyoteJumpTmr++;
}

// Aceleración

if moving == false {
	xspd = -1.2 * image_xscale;
	accelTimer--;
} else {
	accelTimer = accelFrames;
}

if (accelTimer <= 0) {
	xspd = 0;
	accelTimer = 0;
}

// CoyoteTime

if coyoteHangTmr < coyoteHangFrm {
	yspd += 0;
} else {
	yspd += gravedad;
}

// Deslizamiento de babosa

if place_meeting(x , y, walljumpableObj) && !contsuelo && yspd > 0 && (moving == true) {
	yspd += wallGrav;
	yspd = min(yspd, wallFallMax);
}

// Salto

if jumpTimer > 0 {
	yspd = jumpSpd;
	jumpTimer--;
}

if contsuelo == true {
	jumpCount = 0;
} else {
	if jumpCount == 0 && coyoteJumpTmr >= coyoteJumpFrm {
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

// Walljump

if place_meeting(x, y, walljumpableObj) && (contsuelo == false) && jump && (moving == true) {
	jumpCount = jumpCount -1;
	yspd = wallyspd;
	walljumpTimer = walljumpFrames;
	estado = states.walljump;
} else if contsuelo == true {
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

if place_meeting(x,y,colisionObj) && sprite_index != saltoSpr {
	y += -1;
} else {
x += xspd;
y += yspd;
}

// Hechizo

if habilidad && (habilidadcooldown <= 0) {
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

// Tieso

if tab {
	invGUIObj.activo = true;
	estado = states.tieso
}

// Debug

if keyboard_check(vk_control) && keyboard_check_pressed(ord("R")) || keyboard_check_pressed(vk_control) && keyboard_check(ord("R")) {
	estado = states.debug
}

// Sprites

if (moving == true) && (coyoteHangTmr < coyoteHangFrm) && (yspd == 0) {
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
	
	if ( yspd < 0 ) && (contsuelo == false) {
		sprite_index = saltoSpr;
	}
	
	if ( yspd > 0 ) && (contsuelo == false) {
		sprite_index = caidaSpr;
	}
		
	if ( accelTimer > 0 ) && (moving == false) && (contsuelo == true) {
		sprite_index = inbtwSpr;
	}
	
	if place_meeting(x, y, walljumpableObj) && (moving == true) && (yspd > 0) {
		sprite_index = wallcaidaSpr;
	}
	
	if place_meeting(x, y, walljumpableObj) && (yspd <= 0) && (moving = true) && contsuelo == false {
		sprite_index = wallsubidaSpr;
	}
	

} // Fin del Script