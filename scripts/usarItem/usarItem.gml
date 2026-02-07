function usarItem(itemID){
	var item = global.items[itemID];
	var action = item[ITEM_VAR_ACCION];
	
	action();
}