image_xscale = 2.5;
image_yscale = 2.5;
depth = -110;

var item = inventarioObj.inventario

if place_meeting(x,y,playerObj) && keyboard_check_pressed(ord("E")) {
	agregarItem(itemID,cantidad);
	
	instance_destroy()
}