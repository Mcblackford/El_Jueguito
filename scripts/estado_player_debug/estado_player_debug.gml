function estado_player_debug(){

depth = -999

Inputs()

if izq {
	x += -15;
} else if der {
	x += 15;
} if arriba {
	y += -15;
} else if abajo {
	y += 15;
} else {
	x+= 0;
	y+= 0;
}

// Control

if (

keyboard_check(vk_control) && keyboard_check_pressed(ord("R")) ||
keyboard_check_pressed(vk_control) && keyboard_check(ord("R"))  

) {
	estado = states.control;
}

}