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

else if (estado == states.song) {
	estado_player_musical()
}

else if (estado == states.adquirhab) {
	estado_player_adquirir_hab()
}

///

if !instance_exists(playerTailObj) {
	var _cola = instance_create_layer(x,y, "instances", playerTailObj)
}

// Seleccion de Habilidades

if !instance_exists(spellswheelObj) {
	var _ruedadehechizos = instance_create_layer(0,0,"instances",spellswheelObj)
}

habilidad_en_seleccion()

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