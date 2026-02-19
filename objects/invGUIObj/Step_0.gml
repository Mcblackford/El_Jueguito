if (activo) {
    if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter)) {
        if (botones) {
            
            var item = inventarioObj.inventario[| selector]; 
            var itemVar = global.items[item[INVENTARIO_ITEM]]; 
            
            if (sub_selector == 0) {
				// uso extra q aun noc xd
                show_debug_message("Acción extra para: " + string(itemVar[ITEM_VAR_NAME]));
            } 
            else if (sub_selector == 1) {
				 // usar
                show_message("Carayo!, te has curado 10 puntos de vida!, eso no es muy proplayer de tu parte...");
                if (item[INVENTARIO_CANTIDAD] <= 0) {
                    ds_list_delete(inventarioObj.inventario, selector);
                    selector = max(0, selector - 1);
                    botones = false;
                }
            }
        }
    }
}