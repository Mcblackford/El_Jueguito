var item= obtenerItem(ITEM_POCION);
if (item !=noone) {
show_message("pociones restantes:" + string(item[INVENTARIO_CANTIDAD]));
} else {
	show_message("tienes 0 pociones")
}