function estado_player_musical(){ //

sprite_index = caidaSpr;

if !instance_exists(musicObj) {
	var _musicaobj = instance_create_layer(x,y, "instances", musicObj);
	_musicaobj.x = mouse_x;
	_musicaobj.y = mouse_y;
}

// Hechizo

condicion_de_hechizo()

// Muerte

condicion_de_muerte()

// Transición

if (place_meeting(x,y, roomWalkObj)) {
	estado = states.transicion
}

// Tieso

if tab {
	invGUIObj.activo = true;
	estado = states.tieso
}

// Debug

condicion_de_debug()

// Control

if cursorObj.sprite_index != armoniaCur && cursorObj.sprite_index != armoniaCurB && cursorObj.sprite_index != armoniaCurC || !place_meeting(x,y+1,colisionObj) {
	estado = states.control;
}


} //