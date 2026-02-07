//aca estamos creando el script para poder empezar a crear items, no tocar, a menos que quieras agregegar mas variables a los item (obviamente pasa primero por #macros)
function crearItem(nombre,descripcion, sprite, accion){
	var item = [];

	item[ITEM_VAR_NAME] = nombre;
	item[ITEM_VAR_DESCRP] = descripcion;
	item[ITEM_VAR_SPRITE] = sprite;
	item[ITEM_VAR_ACCION] = accion;
	
	return item;
}