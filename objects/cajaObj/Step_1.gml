depth = -96

cajadecel++;
cajahspd = cajaxspd * sidedvalue;

if cursorObj.cursorstate == 1 {
	sidedvalue = -1;
}
if cursorObj.cursorstate == 0 {
	sidedvalue = 1;
}
if cursorObj.cursorstate > 1 {
	sidedvalue = 0;
}

if place_meeting(x,y,windcolision) {
	if cursorObj.cursordistance == 1 {
		vientofuer = 5;
		cajadecel = 0.1;
	} else if cursorObj.cursordistance == 2 {
		vientofuer = 10;
		cajadecel = 0.5;
	} else if cursorObj.cursordistance == 3 {
		vientofuer = 20;
		cajadecel = 9;
	} else if cursorObj.cursordistance == 4 {
		vientofuer = 26;
		cajadecel = 1.2;
	}
	cajadecel = 0;
	cajaxspd = vientofuer;
}

if cajaxspd == 0 {
		randomwind = random_range(0.9,1.1);
}

if cajadecel >= cajaxspd || place_meeting(x+cajahspd,y,colisionObj) {
	cajadecel = 0;
	cajaxspd = 0;
} else {
	
x += (cajaxspd - cajadecel) * randomwind * sidedvalue;

}

if !collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true) {
	cajagravedad++;
	y += cajagravedad;
} else {
	y+= 0;
	var plataforma = collision_rectangle(x,y,x+sprite_width,y+1,colisionObj,true,true)
	if (plataforma) {
		y = plataforma.y;
		cajagravedad = 0;
	}
}