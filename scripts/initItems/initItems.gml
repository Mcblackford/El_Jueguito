// aca creamos los items, recuerda colocar el item en macro primero, y darle un uso en la carpeta "efectos de item"
function initItems(){
	global.items = [];
	
	// items normales
	global.items[ITEM_POCION] = crearItem("Poción de salud", "Te da +10 puntos de vida.",pocionSpr, itemPocion, 99, TIPO_NORMI);
	global.items[ITEM_POCION1] = crearItem("Poción de salud 1", "Te da +10 puntos de vida.",pocionSpr, itemPocion, 99, TIPO_NORMI);
	global.items[ITEM_POCION2] = crearItem("Poción de salud 2", "Te da +10 puntos de vida.",pocionSpr, itemPocion, 99, TIPO_NORMI);


	// items clave
	global.items[ITEM_IMPORTANTE] = crearItem("Item importante", "Definitamente se ve como un item importante.", hfuegoPag , itemNouso, 1, TIPO_CLAVE);
	global.items[ITEM_PAGINA] = crearItem("Página", "Es una página", hrayoPag, itemPagina, 1, TIPO_CLAVE);
}