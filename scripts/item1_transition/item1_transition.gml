function item1_transition(){

if itemtier == 0 {
	sprite_index = itemAemergente;
} else if itemtier == 1 {
	sprite_index = itemBemergente;
}

if (image_index > image_number-1) {
	estadoitem = itemstate.takeable;
}

}