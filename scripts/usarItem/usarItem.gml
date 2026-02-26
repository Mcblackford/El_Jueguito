function usarItem(itemID){
	var item = obtenerItem(itemID);
	
	if (item != noone) {
	var item_var = global.items[itemID];
	var action = item_var[ITEM_VAR_ACCION];
	
	action();
	
	if (item_var[ITEM_VAR_TIPO] !=TIPO_CLAVE) {
		item[@ INVENTARIO_CANTIDAD] -= 1;
	
		if (item[INVENTARIO_CANTIDAD] <= 0) {
		 borrarItem(itemID);
		}
	}
	}
}