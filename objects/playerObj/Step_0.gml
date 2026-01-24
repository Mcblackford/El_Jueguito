// Inputs

der = keyboard_check( ord("D") );
izq = keyboard_check( ord("A") );
arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);

// Suelo
if ( yspd >= 0 ) && place_meeting(x, y + 1, colisionObj) {
	setOnground(true);
}

// Movimiento (Spd)

xspd = ( der - izq ) * moveSpd;

if !der && !izq && (image_xscale = -2.5) {
	xspd = 3
}

if !der && !izq && (image_xscale = 2.5) {
	xspd = -3
}

if izq {
	accelTimer = accelFrames
}

if der {
	accelTimer = accelFrames
}

if !der && !izq {
	accelTimer--;
}

if accelTimer <= 0 {
	xspd = 0
}

if coyoteHangTmr > 0 {
	coyoteHangTmr--;
} else {
	yspd += gravedad;
	setOnground(false)
}
if contSuelo = true {
	jumpCount = 0;
	coyoteJumpTmr = coyoteJumpFrm;
} else {
	coyoteJumpTmr--;
	if jumpCount == 0 && coyoteJumpTmr <= 0 {
		jumpCount = 1;
	}
}

if place_meeting(x + 1, y, colisionObj) {
	jumpMax = 1
}

if place_meeting(x, y, jumpOrb) {
	jumpCount = jumpCount -1;
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

if place_meeting(x, y, walljumpableObj) && contSuelo = false && jump && (izq or der) {
	jumpCount = jumpCount -1;
	yspd = walljumpYspd
	walljumpTimer = walljumpFrames;
} else if contSuelo = true {
	walljumpTimer = 0
}

if walljumpTimer > 10 {
	xspd = -walljumpXspd * ( xspd * 0.06 )
	walljumpTimer--;
}

if (walljumpTimer > 0) && (walljumpTimer < 10) {
	xspd = -walljumpXspd * ( xspd * 0.4 )
	walljumpTimer--;
}

// Colision

if place_meeting( x + xspd, y, colisionObj ) {
	
	var _pixelcheck = sign(xspd);
while !place_meeting( x + _pixelcheck, y, colisionObj) {
	x += _pixelcheck
}
	xspd = 0;
}

if place_meeting( x + xspd, y + yspd, colisionObj) {
	var _pixelcheck = sign(yspd);
	while !place_meeting( x + xspd, y + _pixelcheck, colisionObj) {
		y += _pixelcheck;
	}
	
	yspd = 0;
}

x += xspd;
y += yspd;

// Sprites

if ( izq or der ) && ( yspd = 0 ) && !place_meeting( x, y + yspd, colisionObj) {
	sprite_index = caminSpr;
	if der {
	image_xscale = -2.5;
	}
	if izq {
	image_xscale = 2.5;
	}
} else {
	sprite_index = tiesoSpr;
}

if ( yspd < -2 ) {
	sprite_index = saltoSpr;
	if der {
	image_xscale = -2.5;
	}
	if izq {
	image_xscale = 2.5;
	}
}

if ( yspd > 2 ) && !place_meeting( x + xspd, y + yspd, colisionObj) {
	sprite_index = caidaSpr;
	if der {
	image_xscale = -2.5;
	}
	if izq {
	image_xscale = 2.5;
	}
}

if izq && der {
	sprite_index = tiesoSpr;
}

if ( accelTimer > 0 ) && !izq && !der {
	sprite_index = inbtwSpr;
}

if place_meeting(x, y, walljumpableObj) && (yspd > 0) && ( izq or der ) {
	sprite_index = wallcaidaSpr;
}

if place_meeting(x, y, walljumpableObj) && (yspd <= 0) && ( izq or der ) && contSuelo = false {
	sprite_index = wallsubidaSpr;
}