depth = -96

if magnetoestado == magnetstate.staydelectrified {
	magnetblock_regular()
	magnetblock_stay()
}

else if magnetoestado == magnetstate.stayelectrified {
	magnetblock_electrified()
	magnetblock_stay()
}

else if magnetoestado == magnetstate.movetodelectrified {
	magnetblock_regular()
	magnetblock_moveto()
}

else if magnetoestado == magnetstate.movetoelectrified {
	magnetblock_electrified()
	magnetblock_moveto()
}