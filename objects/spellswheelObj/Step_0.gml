depth = -90;
if !instance_exists(spellwheelSelec) {
	var _seleccion = instance_create_layer(x,y,"instances",spellwheelSelec);
}

if estadoderueda = ruedaestado.inactivo {
	spellwheel_inactivo()
}

else if estadoderueda = ruedaestado.activo {
	spellwheel_activo()
}

// Habilidades

if ruedaselect == 0 {
	nullselect = true;
} else {
	nullselect = false;
}

if ruedaselect == 1 {
	fuegoselect = true;
} else {
	fuegoselect = false;
}

if ruedaselect == 2 {
	vientoselect = true;
} else {
	vientoselect = false;
}

if ruedaselect == 3 {
	imanselect = true;
} else {
	imanselect = false;
}

if ruedaselect == 4 {
	rayoselect = true;
} else {
	rayoselect = false;
}

if ruedaselect == 5 {
	nubeselect = true;
} else {
	nubeselect = false;
}

if ruedaselect == 6 {
	luzselect = true;
} else {
	luzselect = false;
}

if ruedaselect == 7 {
	armoniaselect = true;
} else {
	armoniaselect = false;
}