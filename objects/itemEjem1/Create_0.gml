itemID= _itemID;
cantidad = _cantidadID;

enum itemstate {
	hidden,
	emerging,
	transition,
	takeable,
	pocket
}

estadoitem = itemstate.hidden;
itemgravedad = 0.3;
randomhspd = 0;
randomitemvalue = 0;