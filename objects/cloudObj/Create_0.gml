endtimer = 0;
electrifiedcloud = false;

choosesprite = random(3)
roundnumb = 0;

randomx = 0;

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

gotatimer = 0;