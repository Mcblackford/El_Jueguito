x = mouse_x;
y = mouse_y;
depth = -9000;

// Sprites

if playerObj.currenthab == habs.null {
	sprite_index = standarCur;
	
} else if playerObj.currenthab == habs.fuego {
	sprite_index = fuegoCur;

} else if playerObj.currenthab == habs.viento {
	sprite_index = vientoCur;

} else if playerObj.currenthab == habs.iman {
	sprite_index = imanCur;

} else if playerObj.currenthab == habs.rayo {
	sprite_index = rayoCur;

} else if playerObj.currenthab == habs.nube {
	sprite_index = nubeCur;

} else if playerObj.currenthab == habs.luz {
	sprite_index = luzCur;

} else if playerObj.currenthab == habs.armonia {
	sprite_index = armoniaCur;

} else if playerObj.currenthab == habs.armoniamayor {
	sprite_index = armoniaCurB;

} else if playerObj.currenthab == habs.armoniamenor {
	sprite_index = armoniaCurC;

}

// Estado de Colisión de Pantalla

if place_meeting(x, y, pantallaleft) {
	cursorstate = 0;
}
if place_meeting(x, y, pantallaright) {
	cursorstate = 1;
}
if place_meeting(x, y, pantallaup) {
	cursorstate = 2;
}
if place_meeting(x, y, pantalladown) {
	cursorstate = 3;
}

// Lejanía con el jugador

var _target = playerObj;
if instance_exists(_target) {
	var _long_dist = 600;
	var _medium_dist = 350;
	var _close_dist = 200;
	var _dist = point_distance(_target.x, _target.y-64, mouse_x, mouse_y);
	
	if _dist <= _close_dist {
		cursordistance = 1;
	} else if (_dist > _close_dist) && (_dist <= _medium_dist) {
		cursordistance = 2;
	} else if (_dist > _medium_dist) && (_dist <= _long_dist) {
		cursordistance = 3;
	} else if (_dist > _long_dist) {
		cursordistance = 4;
	}
}
		
	
