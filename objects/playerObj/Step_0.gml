/// ESTADOS

if (estado == states.control) {
	estado_player_control()
}

else if (estado == states.walljump) {
	estado_player_walljump()
}

else if (estado == states.muerte) {
	estado_player_muerte()
}

else if (estado == states.transicion) {
	estado_player_transicion()
}

else if (estado == states.hechizo) {
	estado_player_hechizo()
}

///

// Colisión de Pantalla

if !instance_exists(pantallaup) {
	instance_create_depth(x,y,-98,pantallaup)
}
if !instance_exists(pantalladown) {
	instance_create_depth(x,y,-98,pantalladown)
}
if !instance_exists(pantallaleft) {
	instance_create_depth(x,y,-98,pantallaleft)
}
if !instance_exists(pantallaright) {
	instance_create_depth(x,y,-98,pantallaright)
}

// inventario
if (keyboard_check_pressed(vk_tab)){invGUIObj.activo = !invGUIObj.activo;}

var ver =keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
if (ver !=0){
	invGUIObj.selector = clamp(invGUIObj.selector + ver, 0, ds_list_size(inventarioObj.inventario) - 1);
}