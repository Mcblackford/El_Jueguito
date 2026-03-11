if place_meeting(x, y, colisionObj) || place_meeting(x,y, cajaObj) || place_meeting(x,y, enredaderaCuerdaObj) || place_meeting(x,y, enredaderaObj) {
	instance_destroy()
}

firegrav++;

if cursorObj.cursorstate == 1 {
	sidedvalue = -1;
}
if cursorObj.cursorstate == 0 {
	sidedvalue = 1;
}
if cursorObj.cursorstate > 1 {
	sidedvalue = 0;
}

if cursorObj.cursorstate <= 1 {
	if place_meeting(x,y,windColisionObj) {
		if cursorObj.cursordistance == 1 {
			speedvalue = 10;
		} else if cursorObj.cursordistance == 2 {
			speedvalue = 20;
		} else if cursorObj.cursordistance == 3 {
			speedvalue = 30;
		} else if cursorObj.cursordistance == 4 {
			speedvalue = 40;
		}
	
		hspeed = speedvalue * sidedvalue;
		vspeed = -10;
		firegrav = 0;
	}
}

if cursorObj.cursorstate = 2 {
	if place_meeting(x,y,windColisionObj) {
		if cursorObj.cursordistance == 1 {
			speedupvalue = -10;
		} else if cursorObj.cursordistance == 2 {
			speedupvalue = -20;
		} else if cursorObj.cursordistance == 3 {
			speedupvalue = -30;
		} else if cursorObj.cursordistance == 4 {
			speedupvalue = -40;
		}
		vspeed = speedupvalue;
		firegrav = 0;
	}
}

if cursorObj.cursorstate = 3 {
	if place_meeting(x,y,windColisionObj) {
		hspeed = 0;
	}
}

y += firegrav;

depth = -98;