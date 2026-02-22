function enredadera_c_idle(){

sprite_index = enredaderaCofreSpr;

var enredaderacontacto = place_meeting(x,y,enredaderaCuerdaObj);

if enredaderacontacto {
	if place_meeting(x,y,fireballObj) || (enredaderaCuerdaObj.estadoenredacuerda == enredestado.burn) {
		estadoenredacofre = enredestadocofre.burn
	}
}

}