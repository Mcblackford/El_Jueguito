depth = -96

if magnetoestado == magnetstate.delectrified {
	magnetblock_regular()
	magnetblock_movement()
}

else if magnetoestado == magnetstate.electrified {
	magnetblock_electrified()
	magnetblock_movement()
}