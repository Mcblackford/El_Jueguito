enum states {
	tieso,
	control,
	walljump,
	transicion,
	hechizo,
	muerte
}

estado = states.control;

// Funciones

function setOnground(_val = true) {
	if _val = true {
		contSuelo = true;
		coyoteHangTmr = coyoteHangFrm;
	} else {
		contSuelo = false;
		coyoteHangTmr = 0;
	}
}

// Variables

xspd = 0;
yspd = 0;

accelFrames=12;
accelTimer=0;

moveSpd = 9;
jumpSpd = -12;
gravedad = 0.65;

wallGrav= 0.04;
wallFallMax= 12;

wallxspd = 8;
wallyspd = -18;

walljumpFrames = 16;
walljumpTimer = 0;

jumpMax = 1;
jumpCount = 0;

jumpHoldFrames = 14;
jumpTimer = 0;

coyoteHangFrm = 3;
coyoteHangTmr = 0;

coyoteJumpFrm = 5;
coyoteJumpTmr = 0;

deathTimer = 0;
deathMaxTimer = 45;

cooldownFrm = 60;
habilitycooldown = 0;

// --Viento--

vientoTmr = 0;
vientoFrm = 60;