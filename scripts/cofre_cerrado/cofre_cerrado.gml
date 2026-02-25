function cofre_cerrado(){

sprite_index = cofreComunSpr;
interact = keyboard_check_pressed( ord("E"));
habilidad = mouse_check_button_pressed(mb_left);

if place_meeting(x,y,playerObj) && !place_meeting(x,y, enredaderaObj) && (interact || (habilidad && (cursorObj.sprite_index = standarCur))) {
	estadodecofre = estadosdecofre.espera;
}

}