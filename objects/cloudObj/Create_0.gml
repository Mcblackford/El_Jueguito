endtimer = 0;
electrifiedcloud = false;

enum cloudstate {
	spawn,
	iddle,
	death
}

estadonube = cloudstate.spawn;

nubeaccel = 1.5;
nubedeccel = 0.01;
nubespd = 0;
movingtime = 0;