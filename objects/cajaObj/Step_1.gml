depth = -96

cajadecel++;

if cursorObj.cursorstate == 1 {
	sidedvalue = -1;
}
if cursorObj.cursorstate == 0 {
	sidedvalue = 1;
}

if place_meeting(x,y,windcolision) {
	if cursorObj.cursordistance == 1 {
		vientofuer = 5;
		cajadecel = 0.1;
	} else if cursorObj.cursordistance == 2 {
		vientofuer = 10;
		cajadecel = 0.5;
	} else if cursorObj.cursordistance == 3 {
		vientofuer = 15;
		cajadecel = 1;
	} else if cursorObj.cursordistance == 4 {
		vientofuer = 20;
		cajadecel = 1.5;
	}
	cajadecel = 0;
	cajaxspd = vientofuer;
}

if cajadecel >= cajaxspd || place_meeting(x+cajaxspd,y,colisionObj) {
	cajadecel = 0;
	cajaxspd = 0;
}

if cajaxspd == 0 {
	randomwind = random_range(0.9,1.1);
}

x += (cajaxspd - cajadecel) * randomwind * sidedvalue;

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