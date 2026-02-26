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
               usarItem(item[INVENTARIO_ITEM]);
                if (item[INVENTARIO_CANTIDAD] <= 0) {
                    selector = max(0, selector - 1);
                    botones = false;
                }
            }
        }
    }
	 if (activo && !botones) {
        if (keyboard_check_pressed(vk_right)) { 
            sec_act= TIPO_CLAVE; 
            selector = 0; 
        }
        if (keyboard_check_pressed(vk_left)) { 
            sec_act = TIPO_NORMI; 
            selector = 0; 
        }
    }
}