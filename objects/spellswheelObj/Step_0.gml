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

if playerObj.ruedaselect == 0 {
	nullselect = true;
} else {
	nullselect = false;
}

if playerObj.ruedaselect == 1 {
	fuegoselect = true;
} else {
	fuegoselect = false;
}

if playerObj.ruedaselect == 2 {
	vientoselect = true;
} else {
	vientoselect = false;
}

if playerObj.ruedaselect == 3 {
	imanselect = true;
} else {
	imanselect = false;
}

if playerObj.ruedaselect == 4 {
	rayoselect = true;
} else {
	rayoselect = false;
}

if playerObj.ruedaselect == 5 {
	nubeselect = true;
} else {
	nubeselect = false;
}

if playerObj.ruedaselect == 6 {
	luzselect = true;
} else {
	luzselect = false;
}

if playerObj.ruedaselect == 7 {
	armoniaselect = true;
} else {
	armoniaselect = false;
}