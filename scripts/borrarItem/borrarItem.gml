function borrarItem(itemID){
	var item = obtenerItem(itemID)
	
	if (item !=noone) {
		var pos = ds_list_find_index(inventarioObj.inventario, item);
		ds_list_delete(inventarioObj.inventario, pos);
	}
}