function enredadera_cuer_idle(){

sprite_index = enredaderaCuerdaSpr;

var enredaderacontacto = place_meeting(x,y,enredaderaObj);

if enredaderacontacto {
	if place_meeting(x,y,fireballObj) || (enredaderaObj.estadoenredacofre) {
		estadoenredacuerda = enredestado.burn
	}
}

}