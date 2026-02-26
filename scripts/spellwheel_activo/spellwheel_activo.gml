function spellwheel_activo(){ //

if !mouse_wheel_up() && !mouse_wheel_down() {
	ruedatimer--;
} else {
	ruedatimer = 60;
}

if ruedamove > 2 {
	ruedamove = 0;
}

if playerObj.ruedaselect > 7 {
	playerObj.ruedaselect = 0;
}
if playerObj.ruedaselect < 0 {
	playerObj.ruedaselect = 7;
}

if mouse_wheel_up() || mouse_wheel_down() {
	ruedamove += 1;
} else {
	ruedamove += 0;
}

if ruedamove = 1 {
	if mouse_wheel_up() {
		playerObj.ruedaselect += -1;
	} else if mouse_wheel_down() {
		playerObj.ruedaselect += 1
	} else {
		playerObj.ruedaselect += 0;
	}
}


if ruedatimer <= 0 || (playerObj.estado == states.tieso) {
	estadoderueda = ruedaestado.inactivo;
}

} //