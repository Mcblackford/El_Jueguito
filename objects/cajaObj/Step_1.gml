depth = -96

if ciclotimerbox <= 0 {
	ciclotimerbox = 10;
} else {
	ciclotimerbox--;
}

randomnumberx = random_range(sprite_width*0.5*(-1),sprite_width*0.5);
randomnumbery = random_range(sprite_height*0.5*(-1),sprite_height*0.5);

///

if estadocaja == cajastate.idle {
	caja_iddle()
	caja_moveable()
}

else if estadocaja == cajastate.burning {
	caja_burning()
	caja_moveable()
	caja_spawn_fire()
}

else if estadocaja == cajastate.onfire {
	caja_onfire()
	caja_moveable()
	caja_spawn_fire()
}

else if estadocaja == cajastate.todust {
	caja_todust()
	caja_spawn_fire()
}

else if estadocaja == cajastate.dusted {
	caja_dusted()
}