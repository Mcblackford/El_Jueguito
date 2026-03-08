function nubeiddle(){

sprite_index = nubeIddleSpr;
if electrifiedcloud == true {
	sprite_index = nubeIddleElectSpr;
}

if (endtimer > 340 && (image_index > image_number-1)) || (instance_number(cloudObj) > 1) || place_meeting(x,y, colisionObj) {
	estadonube = cloudstate.death;
}

}