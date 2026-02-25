x = mouse_x;
y = mouse_y;
depth = -9000;

arriba = keyboard_check( ord("W") );
abajo = keyboard_check( ord("S") );

function nullcursor() {
	sprite_index = standarCur;
}


if instance_exists(spellswheelObj) {
	
	
	if spellswheelObj.nullselect == true {
		nullcursor()
	}
	
// Habilidades
	
	else if spellswheelObj.fuegoselect == true {
		if playerObj.fuegospell == true {
			sprite_index = fuegoCur;
		} else {
			nullcursor()
		}
	}
	
	else if spellswheelObj.vientoselect == true {
		if playerObj.vientospell == true {
			sprite_index = vientoCur;
		} else {
			nullcursor()
		}
	}
	
	else if spellswheelObj.imanselect == true {
		if playerObj.imanspell == true {
			sprite_index = imanCur;
		} else {
			nullcursor()
		}
	}
		
	else if spellswheelObj.rayoselect == true {
		if playerObj.rayospell == true {
			sprite_index = rayoCur;
		} else {
			nullcursor()
		}
	}
	
	else if spellswheelObj.nubeselect == true {
		if playerObj.nubespell == true {
			sprite_index = nubeCur;
		} else {
			nullcursor()
		}
	}
	
	else if spellswheelObj.luzselect == true {
		if playerObj.luzspell == true {
			sprite_index = luzCur;
		} else {
			nullcursor()
		}
	}
	
	else if spellswheelObj.armoniaselect == true {
		if playerObj.armoniaspell == true {
			if arriba {
				sprite_index = armoniaCurB;
			} else if abajo {
				sprite_index = armoniaCurC;
			} else {
				sprite_index = armoniaCur;
			}
		} else {
			nullcursor()
		}
	}
	
	else {
		nullcursor()
	}


} else {
	nullcursor()
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
		
	
