enum magnetstate {
	movetodelectrified,
	movetoelectrified,
	staydelectrified,
	stayelectrified
}

magnetoestado = magnetstate.staydelectrified;

electrified = false;

magnettimer = 0;

magnetobloquegrav = 0.1;
magnetoairgrav = 0.8;
airgrav = 0;

randomdir = 0;