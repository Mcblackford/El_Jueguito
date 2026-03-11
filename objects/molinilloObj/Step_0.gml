depth = -95;
image_xscale = 2.5;
image_yscale = 2.5;

if molinillorotacion > 0 {
	molinillorotacion -= molinillodeceleracion;
	molinilloactivo = true;
} else {
	molinilloactivo = false;
	molinillofuerza = 0;
}

if place_meeting(x,y, windColisionObj) {
	if cursorObj.cursordistance = 1 {
		molinillorotacion = 5;
		molinillofuerza = 1;
	} else if cursorObj.cursordistance = 2 {
		molinillorotacion = 10;
		molinillofuerza = 2;
	} else if cursorObj.cursordistance = 3 {
		molinillorotacion = 15;
		molinillofuerza = 3;
	} else if cursorObj.cursordistance = 4 {
		molinillorotacion = 20;
		molinillofuerza = 4;
	}
}

image_angle += molinillorotacion;