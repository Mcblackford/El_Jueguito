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

else if (estado == states.tieso) {
	estado_player_tieso()
}

else if (estado == states.debug) {
	estado_player_debug()
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