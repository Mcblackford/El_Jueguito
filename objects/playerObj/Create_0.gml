// Estados

enum states {
	tieso,
	control,
	walljump,
	transicion,
	hechizo,
	muerte
}

estado = states.control;

contsuelo = false;

// Variables

	// Velocidades y Magnitudes
	
xspd = 0;
yspd = 0;

accelFrames = 12;
accelTimer = 0;

moveSpd = 10;
jumpSpd = -12;
gravedad = 0.65;

wallGrav= 0.04;
wallFallMax = 12;

wallxspd = 14.5;
walldeccel = 7;
wallyspd = -10;

jumpMax = 1;
jumpCount = 0;

	// Timers

walljumpFrames = 16;
walljumpTimer = 0;

jumpHoldFrames = 14;
jumpTimer = 0;

coyoteHangFrm = 3;
coyoteHangTmr = 0;

coyoteJumpFrm = 5;
coyoteJumpTmr = 0;