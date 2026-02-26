function cantidadItem(tipo){
    var conteo = 0;
    var size = ds_list_size(inventarioObj.inventario);
    for (var i = 0; i < size; i++) {
        var item = inventarioObj.inventario[| i];
        var itemVar = global.items[item[INVENTARIO_ITEM]];
        if (itemVar[ITEM_VAR_TIPO] == tipo) {
            conteo++;
        }
    }
    return conteo;
}