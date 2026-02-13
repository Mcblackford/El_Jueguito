function obtenerItem(itemID){
	var length = ds_list_size(inventarioObj.inventario)

	for (var i=0;i<length;i++) {
		var item = inventarioObj.inventario[| i];
		
		if (item[INVENTARIO_ITEM] == itemID) {
			return item;
		}
	}
	return noone;
}