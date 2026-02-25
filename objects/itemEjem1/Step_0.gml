image_xscale = 2.5;
image_yscale = 2.5;
depth = -110;

if estadoitem == itemstate.hidden {
	item1_hidden()
}

else if estadoitem == itemstate.emerging {
	item1_emerging()
}

else if estadoitem == itemstate.transition {
	item1_transition()
}

else if estadoitem == itemstate.takeable {
	item1_takeable()
}

else if estadoitem == itemstate.pocket {
	item1_pocket()
}