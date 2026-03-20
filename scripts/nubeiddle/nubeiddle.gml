function nubeiddle(){

var _lluvia = part_system_create(lluviaPart)
part_system_position(_lluvia,x,y)

sprite_index = nubeIddleSpr;
if electrifiedcloud == true {
	sprite_index = nubeIddleElectSpr;
}

if gotatimer == 0 && electrifiedcloud == true {
	instance_create_layer(x,y, "instances", gotaObj)
}

if (endtimer > 1000 && (image_index > image_number-1)) || (instance_number(cloudObj) > 1) || place_meeting(x,y, colisionObj) {
	estadonube = cloudstate.death;
}

}