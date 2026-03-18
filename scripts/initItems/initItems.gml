// aca creamos los items, recuerda colocar el item en macro primero, y darle un uso en la carpeta "efectos de item"
function initItems(){
	global.items = [];
	
	// items normales
	global.items[ITEM_POCION] = crearItem("Poción de Salud", "Te da +10 puntos de vida.",pocionSpr, itemPocion, 99, TIPO_NORMI, "Te da +10 puntos de vida.");
	global.items[ITEM_HIERBA] = crearItem("Hierba Buena", "Restaura una pequeña cantidad de vida, también se puede utilizar en recetas.",hierbaSpr, itemPocion, 99, TIPO_NORMI, "Restaura una pequeña cantidad de vida, también se puede utilizar en recetas.");
	global.items[ITEM_LLAVE_VIEJA] = crearItem("Llave Vieja", "Una llave pequeña que puede abrir algunas puertas y cerraduras.",llaveViejaSpr, itemPocion, 99, TIPO_NORMI, "Una llave pequeña que puede abrir algunas puertas y cerraduras.");


	// items clave
	global.items[ITEM_IMPORTANTE] = crearItem("Item importante", "Definitamente se ve como un item importante.", hfuegoPag , itemNouso, 1, TIPO_CLAVE, "Definitamente se ve como un item importante.");
	global.items[ITEM_PAGINA] = crearItem("Página", "Es una página", hrayoPag, itemPagina, 1, TIPO_CLAVE, "Es una página");
}