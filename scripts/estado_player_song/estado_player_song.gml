function estado_player_song(){ //

sprite_index = caidaSpr;

if !instance_exists(musicObj) {
	var _musicaobj = instance_create_layer(x,y, "instances", musicObj);
	_musicaobj.x = mouse_x;
	_musicaobj.y = mouse_y;
}

// Hechizo

if habilidad && (habilidadcooldown <= 0) && (cursorObj.sprite_index != standarCur) && cursorObj.sprite_index != armoniaCur && cursorObj.sprite_index != armoniaCurB && cursorObj.sprite_index != armoniaCurC {
	estado = states.hechizo
}

// Muerte

if (place_meeting(x,y,deathObj) || place_meeting(x, y, puertaObj) || place_meeting(x, y, puertaSumObj)) {
	estado = states.muerte
}

// Transición

if (place_meeting(x,y, roomwalkObj)) {
	estado = states.transicion
}

// Tieso

if tab {
	invGUIObj.activo = true;
	estado = states.tieso
}

// Debug

if keyboard_check(vk_control) && keyboard_check_pressed(ord("R")) || keyboard_check_pressed(vk_control) && keyboard_check(ord("R")) {
	estado = states.debug
}

// Music

if cursorObj.sprite_index != armoniaCur && cursorObj.sprite_index != armoniaCurB && cursorObj.sprite_index != armoniaCurC || !place_meeting(x,y+1,colisionObj) {
	estado = states.control;
}


} //