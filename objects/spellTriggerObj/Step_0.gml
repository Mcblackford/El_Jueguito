image_xscale = 2;
image_yscale = 2;

if trigger = 0 {
	sprite_index = fuegoseleccionActiveSpr;
	
	if place_meeting(x,y, playerObj) && playerObj.fuegospell == false {
		with playerObj {
			fuegospell = true;
			playerObj.estado = states.adquirhab;
		}
		if !instance_exists(adqHabilidadObj) {
			var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)
		}
	}
	
} else if trigger = 1 {
	sprite_index = vientoseleccionActiveSpr;
	
	if place_meeting(x,y, playerObj) && playerObj.vientospell == false {
		with playerObj {
			vientospell = true;
			playerObj.estado = states.adquirhab;
		}
		if !instance_exists(adqHabilidadObj) {
			var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)
		}
	}
	
} else if trigger = 2 {
	sprite_index = imanseleccionActivoSpr;
	
	if place_meeting(x,y, playerObj) && playerObj.imanspell == false {
		with playerObj {
			imanspell = true;
			playerObj.estado = states.adquirhab;
		}
		if !instance_exists(adqHabilidadObj) {
			var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)
		}
	}
	
} else if trigger = 3 {
	sprite_index = rayoseleccionActiveSpr;
	
	if place_meeting(x,y, playerObj) && playerObj.rayospell == false {
		with playerObj {
			rayospell = true;
			playerObj.estado = states.adquirhab;
		}
		if !instance_exists(adqHabilidadObj) {
			var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)
		}
	}
	
} else if trigger = 4 {
	sprite_index = nubeseleccionActiveSpr;
	
	if place_meeting(x,y, playerObj) && playerObj.nubespell == false {
		with playerObj {
			nubespell = true;
			playerObj.estado = states.adquirhab;
		}
		if !instance_exists(adqHabilidadObj) {
			var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)
		}
	}
	
} else if trigger = 5 {
	sprite_index = luzseleccionActiveSpr;
	
	if place_meeting(x,y, playerObj) && playerObj.luzspell == false {
		with playerObj {
			luzspell = true;
			playerObj.estado = states.adquirhab;
		}
		if !instance_exists(adqHabilidadObj) {
			var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)
		}
	}
	
} else if trigger = 6 {
	sprite_index = musicaseleccionActiveSpr;
	
	if place_meeting(x,y, playerObj) && playerObj.armoniaspell == false {
		with playerObj {
			armoniaspell = true;
			playerObj.estado = states.adquirhab;
		}
		if !instance_exists(adqHabilidadObj) {
			var _adquiriendo = instance_create_layer(x,y, "instances", adqHabilidadObj)
		}
	}
	
}