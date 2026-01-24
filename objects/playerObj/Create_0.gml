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

jumpMax = 1;
jumpCount = 0;

jumpHoldFrames = 14;
jumpTimer = 0;

walljumpYspd = -18;
walljumpXspd = 20;

walljumpFrames = 20;
walljumpTimer = 0;

// Aceleración

curxspd = 0;
curyspd = 0;

accel = 0.1

// Coyote Time Var

	//Hang time
	coyoteHangFrm = 3;
	coyoteHangTmr = 0;
	//Jump buffer time
	coyoteJumpFrm = 5;
	coyoteJumpTmr = 0;
