// aca creamos los items, recuerda colocar el item en macro primero, y darle un uso en la carpeta "efectos de item"
function initItems(){
	global.items = [];
	
	global.items[ITEM_POCION] = crearItem("Poción de salud", "Te da +10 puntos de vida.",pocionSpr, itemPocion);
	global.items[ITEM_IMPORTANTE] = crearItem("Item importante", "Definitamente se ve como un item importante.", noone , itemNouso);
}