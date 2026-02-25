function spellwheel_activo(){ //

if !mouse_wheel_up() && !mouse_wheel_down() {
	ruedatimer--;
} else {
	ruedatimer = 60;
}

if ruedamove > 2 {
	ruedamove = 0;
}

if ruedaselect > 7 {
	ruedaselect = 0;
}
if ruedaselect < 0 {
	ruedaselect = 7;
}

if mouse_wheel_up() || mouse_wheel_down() {
	ruedamove += 1;
} else {
	ruedamove += 0;
}

if ruedamove = 1 {
	if mouse_wheel_up() {
		ruedaselect += -1;
	} else if mouse_wheel_down() {
		ruedaselect += 1
	} else {
		ruedaselect += 0;
	}
}


if ruedatimer <= 0 {
	estadoderueda = ruedaestado.inactivo;
}

} //