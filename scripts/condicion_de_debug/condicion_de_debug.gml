function condicion_de_debug(){

if (

// Condicion

keyboard_check(vk_control) && keyboard_check_pressed(ord("R")) ||
keyboard_check_pressed(vk_control) && keyboard_check(ord("R")) 

// Condicion

) {
	estado = states.debug
}

}