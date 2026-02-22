function cofre_cerrado(){

sprite_index = cofreComunSpr;
interact = keyboard_check_pressed( ord("E"));

if place_meeting(x,y,playerObj) && interact {
	estadodecofre = estadosdecofre.espera;
}

}