function enredadera_c_idle(){

sprite_index = enredaderaCofreSpr;

target = instance_nearest(x,y,enredaderaCuerdaObj)

if place_meeting(x,y,fireballObj) {
	estadoenredacofre = enredestadocofre.burn;
	target.estadoenredacuerda = enredestado.burn;
}

}