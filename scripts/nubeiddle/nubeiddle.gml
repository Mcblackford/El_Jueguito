function nubeiddle(){

sprite_index = nubeIddleSpr;
if electrifiedcloud == true {
	sprite_index = nubeIddleElectSpr;
}

/// Lluvia

if gotatimer == 0 && electrifiedcloud == true {
	var _lluvia = instance_create_layer(x + randomx,y + 40, "instances", gotaObj)
	
	if _lluvia.existingtimer < 5 {
		_lluvia.sprite = roundnumb;
	}
	
}

///

if (endtimer > 1000 && (image_index > image_number-1)) || (instance_number(cloudObj) > 1) || place_meeting(x,y, colisionObj) {
	estadonube = cloudstate.death;
}

}