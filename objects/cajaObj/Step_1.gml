depth = -96

if estadocaja == cajastate.idle {
	caja_iddle()
	caja_moveable()
}

else if estadocaja == cajastate.burning {
	caja_burning()
	caja_moveable()
}

else if estadocaja == cajastate.onfire {
	caja_onfire()
	caja_moveable()
}

else if estadocaja == cajastate.todust {
	caja_todust()
}

else if estadocaja == cajastate.dusted {
	caja_dusted()
}