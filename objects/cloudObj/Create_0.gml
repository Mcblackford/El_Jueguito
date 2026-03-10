endtimer = 0;
electrifiedcloud = false;

enum cloudstate {
	spawn,
	iddle,
	death
}

estadonube = cloudstate.spawn;

nubedeccel = 0.2;
nubespd = 0;
movingtime = 0;

ciclotimernube = 0;