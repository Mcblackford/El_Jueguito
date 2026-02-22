function enredadera_cuer_idle(){

sprite_index = enredaderaCuerdaSpr;

target = instance_nearest(x,y,enredaderaObj)

if place_meeting(x,y,fireballObj) {
	estadoenredacuerda = enredestado.burn;
	target.estadoenredacofre = enredestadocofre.burn;
}

}