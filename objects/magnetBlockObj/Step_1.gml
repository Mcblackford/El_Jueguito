depth = -96

magnetblock_movement()

if magnetoestado == magnetstate.delectrified {
	magnetblock_regular()
}

else if magnetoestado == magnetstate.electrified {
	magnetblock_electrified()
}