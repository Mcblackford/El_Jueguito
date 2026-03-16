// aca creamos los items, recuerda colocar el item en macro primero, y darle un uso en la carpeta "efectos de item"
function initItems(){
	global.items = [];
	
	// items normales
	global.items[ITEM_POCION] = crearItem("Poción de salud", "Te da +10 puntos de vida.",pocionSpr, itemPocion, 99, TIPO_NORMI);
	global.items[ITEM_POCION1] = crearItem("Tuqueque", "e un tuqueque.",tuquequeSpr, itemPocion, 99, TIPO_NORMI);
	global.items[ITEM_POCION2] = crearItem("lareconcha", "hakuna matataaaaaa una forma de seeeeeerr, hakuna matataaaaaaaa, no hay nada que temeeeeeerrr, sin preocuparseeee, así es comop hay que vivirrrr, aaayyy",itemA, itemPocion, 99, TIPO_NORMI);


	// items clave
	global.items[ITEM_IMPORTANTE] = crearItem("Item importante", "Definitamente se ve como un item importante.", hfuegoPag , itemNouso, 1, TIPO_CLAVE);
	global.items[ITEM_PAGINA] = crearItem("Página", "Es una página", hrayoPag, itemPagina, 1, TIPO_CLAVE);
}