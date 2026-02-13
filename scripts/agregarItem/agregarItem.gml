function agregarItem(itemID, cantidad){
	var item = obtenerItem(itemID);
	var item_var = global.items[itemID]
	
	if (item != noone) {
		item[INVENTARIO_CANTIDAD] = clamp(item[INVENTARIO_CANTIDAD] + cantidad, 1 , item_var[ITEM_VAR_MAX]);
	} else {
		item[INVENTARIO_ITEM] = itemID;
		item[INVENTARIO_CANTIDAD] = clamp(cantidad, 1 , item_var[ITEM_VAR_MAX]);
	
		ds_list_add(inventarioObj.inventario, item);

	}	
}