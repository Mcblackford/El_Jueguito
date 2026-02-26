if (activo) {
    if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter)) {
        if (botones) {
            
            var item_real = noone;
            var contador_visual = 0;
            var size = ds_list_size(inventarioObj.inventario); 

            for (var i = 0; i < size; i++) {
                var temp_item = inventarioObj.inventario[| i];
                var temp_var = global.items[temp_item[INVENTARIO_ITEM]]; 
                
                if (temp_var[ITEM_VAR_TIPO] == sec_act) {
                    if (contador_visual == selector) {
                        item_real = temp_item;
                        break;
                    }
                    contador_visual++;
                }
            }

            if (item_real != noone) {
                var itemVar = global.items[item_real[INVENTARIO_ITEM]]; 
                
                if (sub_selector == 0) {
                    // so extra
                    show_debug_message("Acción extra para: " + string(itemVar[ITEM_VAR_NAME])); 
                } 
                else if (sub_selector == 1) {
                    // si hay
                    usarItem(item_real[INVENTARIO_ITEM]);
                    
                    // si se acaba
                    if (item_real[INVENTARIO_CANTIDAD] <= 0) { 
                        selector = max(0, selector - 1);
                        botones = false; 
                    }
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