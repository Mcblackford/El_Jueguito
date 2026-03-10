function condicion_de_inventario(){ ///
	
	
if tab {
	
	if !instance_exists(InventarioBackgroundObj) {
		var _fondo_de_inv = instance_create_layer(x,y, "instances", InventarioBackgroundObj)
	}
	
	if !instance_exists(cursorGUIObj) {
		var _cursor_gui = instance_create_layer(x,y, "instances", cursorGUIObj)
	}
	
	invGUIObj.activo = true;
	estado = states.tieso
}


} ///