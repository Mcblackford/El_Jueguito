// Inputs

moving = false

if walljumpTimer <= 0 {
	der = keyboard_check( ord("D") );
	izq = keyboard_check( ord("A") );
}

if (izq or der) && !(izq && der) {
	moving = true;
}
if !(izq or der) || (izq && der) {
	moving = false;
}

arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );
jump = keyboard_check_pressed( vk_space );
jumphold = keyboard_check(vk_space);

// Suelo

if (( yspd >= 0 ) && place_meeting(x, y + 1, colisionObj)) || ((yspd == 5) && collision_rectangle(x - 6, y, x + 6, y + 1, colisionMovObj, true, true)) {
	setOnground(true);
}
else {
	setOnground(false);
}

// Movimiento y Coyotehang

xspd = ( der - izq ) * moveSpd;

if moving == false {
	xspd = -1.2 * image_xscale
	accelTimer--;
} else {
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

// Siempre despues nada debe ir por debajo de esto (que cambie las velocidades claro)
	// Yo hago lo q m da la gana

x += xspd;
y += yspd;

// Sprites

if der {
	image_xscale = -2.5;
}
if izq {
	image_xscale = 2.5;
}

if (moving == true) && ( yspd == 0 ) && (contSuelo == true) ||
collision_rectangle(x-6, y, x+6, y+1, colisionMovObj, true, true) && moving==true && yspd = 5{
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

if ( accelTimer > 0 ) && (moving == false) && (contSuelo == true) {
	sprite_index = inbtwSpr;
}

if place_meeting(x, y, walljumpableObj) && (moving == true) && (yspd > 0) {
	sprite_index = wallcaidaSpr;
}

if place_meeting(x, y, walljumpableObj) && (yspd <= 0) && (moving = true) && contSuelo == false {
	sprite_index = wallsubidaSpr;
}