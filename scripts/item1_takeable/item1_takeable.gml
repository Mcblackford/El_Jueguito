function item1_takeable(){
	
sprite_index = itemA;

interact = keyboard_check_pressed( ord("E"));
habilidad = mouse_check_button_pressed(mb_left);

var item = inventarioObj.inventario

if place_meeting(x,y,playerObj) && (interact || (habilidad && (cursorObj.sprite_index = standarCur))) {
	agregarItem(itemID,cantidad);
	
	estadoitem = itemstate.pocket;
}

}