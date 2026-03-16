function item1_takeable(){

if itemtier == 0 {
	sprite_index = itemA;
} else if itemtier == 1 {
	sprite_index = itemB;
}

interact = keyboard_check_pressed( ord("E"));
habilidad = mouse_check_button_pressed(mb_left);

var item = inventarioObj.inventario

if place_meeting(x,y,playerObj) && (interact || (habilidad && (cursorObj.sprite_index = standarCur))) {
	agregarItem(itemID,cantidad);
	
	var _notificacion = instance_create_layer(playerObj.x,playerObj.y-600+randomval, "instances", notifItemObj)
	
	_notificacion.itemname = nombre;
	_notificacion.desc = descpt;
	_notificacion.sprite = esprai;
	_notificacion.cant = cantidad;

	estadoitem = itemstate.pocket;
}

}