// Inputs
if walljumpTimer <= 0 {
	der = keyboard_check( ord("D") );
	izq = keyboard_check( ord("A") );
}

arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);

// Suelo
if ( yspd >= 0 ) && place_meeting(x, y + 1, colisionObj) {
	setOnground(true);
}

// Movimiento

xspd = ( der - izq ) * moveSpd;

if !der && !izq {
	xspd = -1.2 * image_xscale
	accelTimer--;
}

if izq or der {
	accelTimer = accelFrames
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

// Deslizamiento Babosa

if place_meeting(x , y, walljumpableObj) && !contSuelo && yspd > 0 && (izq or der) && !(izq && der) {
	yspd += wallGrav;
	yspd = min(yspd, wallFallMax);
}

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

if place_meeting(x, y, walljumpableObj) && (contSuelo == false) && jump && (izq or der) && !(izq && der) {
	jumpCount = jumpCount -1;
	yspd = wallyspd;
	walljumpTimer = walljumpFrames;
} else if contSuelo == true {
	walljumpTimer = 0
}

if walljumpTimer > 0 {
	wallspd = wallxspd * (izq - der);
	xspd = wallspd;
	walljumpTimer--;
}

if walljumpTimer <= 0 {
	wallspd = 0;
}

// Colision

if place_meeting( x + xspd, y, colisionObj ) {
	var _pixelcheck = sign(xspd);
	while !place_meeting( x + _pixelcheck, y, colisionObj) {
		x += _pixelcheck
	}
	xspd = 0;
}

if place_meeting( x, y + yspd, colisionObj) {
	var _pixelcheck = sign(yspd);
	while !place_meeting( x + xspd, y + _pixelcheck, colisionObj) {
		y += _pixelcheck;
	}
	yspd = 0;
}

x += xspd;
y += yspd;

// Sprites

if der {
	image_xscale = -2.5;
}
if izq {
	image_xscale = 2.5;
}

if ( izq or der ) && ( yspd == 0 ) && (contSuelo == true) {
	sprite_index = caminSpr;
} else {
	sprite_index = tiesoSpr;
}

if ( yspd < 4 ) && (contSuelo == false) {
	sprite_index = saltoSpr;
}

if ( yspd > 4 ) && (contSuelo == false) {
	sprite_index = caidaSpr;
}

if (izq && der) && (contSuelo == true) {
	sprite_index = tiesoSpr;
}

if ( accelTimer > 0 ) && !izq && !der && (contSuelo == true) {
	sprite_index = inbtwSpr;
}

if place_meeting(x, y, walljumpableObj) && (izq or der) && (yspd > 0) && !(izq && der) {
	sprite_index = wallcaidaSpr;
}

if place_meeting(x, y, walljumpableObj) && (yspd <= 0) && (izq or der) && !(izq && der) && contSuelo == false {
	sprite_index = wallsubidaSpr;
}