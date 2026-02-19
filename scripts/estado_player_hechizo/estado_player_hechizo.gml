function estado_player_hechizo(){ // Inicio del Script

depth = -99;

yspd = 0;

habilidad = mouse_check_button_pressed(mb_left);

// Cooldown

if habilidadcooldown <= 0 {
	if place_meeting(x, y+1, colisionObj) {
		habilidadcooldown = 45;
	} else {
		habilidadcooldown = 90;
	}
} else {
	habilidadcooldown--;
}

// Colision

if xspd != 0 && place_meeting(x + xspd, y, colisionObj){
	var _pixelcheck = sign(xspd);
	while !place_meeting(x + _pixelcheck, y, colisionObj) {
		x += _pixelcheck;
	}
	xspd = 0;
}

if yspd != 0 && place_meeting(x, y + yspd, colisionObj) {
	var _pixelcheck = sign(yspd);
	while !place_meeting(x, y + _pixelcheck, colisionObj) {
	y += _pixelcheck;
	}
	yspd = 0;
}

// Habilidades

if (place_meeting(x,y+1,colisionObj) && (habilidadcooldown == 30)) || (!place_meeting(x,y+1,colisionObj) && (habilidadcooldown == 75)) {

	// --Fuego--

if !instance_exists(fireballObj) && (cursorObj.sprite_index == fuegoCur) {
	var fireball = instance_create_layer (playerObj.x, playerObj.y-64, "Instances", fireballObj);
	fireball.direction = point_direction (x, y, mouse_x, mouse_y-64);
	fireball.speed = 20;
}

	// --Rayo--
	
 if !instance_exists(thunderballObj) && (cursorObj.sprite_index == rayoCur) {
	var thunderball = instance_create_layer (playerObj.x, playerObj.y-64, "Instances", thunderballObj);
	thunderball.direction = point_direction (x, y, mouse_x, mouse_y+64);
	thunderball.speed = 30;
}

	// --Viento--

if !instance_exists(windcolision) && (cursorObj.sprite_index == vientoCur) {
	instance_create_layer(playerObj.x, playerObj.y, "Instances", windcolision);
}

	// --Iman--
	
if !instance_exists(magnetObj) && (cursorObj.sprite_index == imanCur) {
	var magnetpoint = instance_create_layer(mouse_x,mouse_y, "instances", magnetObj);
}

	// --Nube--
if !instance_exists(cloudObj) && (cursorObj.sprite_index == nubeCur) {
	var nube = instance_create_layer(mouse_x,mouse_y, "instances", cloudObj);
}

} // Fin de Habilidad

// Sprites

if place_meeting(x, y+1, colisionObj) {
	if cursorObj.cursorstate == 0 {
		sprite_index = hechizofrontalSpr;
		image_xscale = -2.5;
	}
	if cursorObj.cursorstate == 1 {
		sprite_index = hechizofrontalSpr;
		image_xscale = 2.5;
	}
	if cursorObj.cursorstate == 2 {
		sprite_index = hechizoarribaSpr;
	}
	if cursorObj.cursorstate == 3 {
		sprite_index = hechizofrontalSpr;
	}
} else {
	if cursorObj.cursorstate == 0 {
		sprite_index = hechizofrontalSpr;
		image_xscale = -2.5;
	}
	if cursorObj.cursorstate == 1 {
		sprite_index = hechizofrontalSpr;
		image_xscale = 2.5;
	}
	if cursorObj.cursorstate == 2 {
		sprite_index = hechizoarribaSpr;
	}
	if cursorObj.cursorstate == 3 {
		sprite_index = hechizoarribaSpr;
	}
}

if (image_index > image_number-1) {
	estado = states.control
}

} // Fin del Script